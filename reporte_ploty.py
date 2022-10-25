from sqlalchemy import create_engine, inspect
import pandas as pd
import plotly.express as px
from dash import Dash, dcc, html, dash_table


# Creamos la conexion
sql_schema = "postgresql:///videocentro"
engine = create_engine(sql_schema)
inspector = inspect(engine)
# print(inspector.get_table_names())

connection = engine.connect()

stmt = """
SELECT r.movie_id, m.title, COALESCE(ROUND(AVG(r.rating), 2), 0) avg_rating 
FROM renting r
INNER JOIN movies m
USING(movie_id)
GROUP BY r.movie_id, m.title
ORDER BY avg_rating DESC
LIMIT 10
"""

df1 = pd.read_sql_query(stmt, engine)
fig = px.bar(df1, x="title", y="avg_rating", color="title")
fig.update_xaxes(title_text = "Película")
fig.update_yaxes(title_text = "AVG Rating")


stmt = """
SELECT r.customer_id,
	  c.name,
      ROUND(AVG(r.rating), 2) avg_rating,  
      COUNT(r.rating) total_rating,  
      COUNT(r.movie_id) total_movies  
FROM renting r
INNER JOIN customers c
USING (customer_id)
GROUP BY r.customer_id, c.name
HAVING COUNT(movie_id) > 7
ORDER BY avg_rating ASC;
"""
df2 = pd.read_sql_query(stmt, engine)
fig2 = px.bar(df2, x="name", y=["avg_rating", "total_rating", "total_movies"], color="name")
fig2.update_xaxes(title_text = "Clientes")
fig2.update_yaxes(title_text = "Valores")

stmt = """
SELECT *
FROM movies
WHERE movie_id IN
   (SELECT movie_id
    FROM movies
    WHERE genre = 'Drama'
    INTERSECT
    SELECT movie_id
    FROM renting
    GROUP BY movie_id
    HAVING AVG(rating)>9)
"""
df3 = pd.read_sql_query(stmt, engine)

app = Dash(__name__)

app.layout = html.Div(style={'margin': 'auto', 'width': '80%'}, children=[
    html.H1('Peliculas más rentadas', style={'textAlign': 'center', 'color': 'black'}),
    html.Div(children='''
        Media de peliculas más rentadas.
    ''', style={'textAlign': 'center', 'color': 'black'}),

    dcc.Graph(
        id='moviesavg_graph',
        figure=fig
    ),

    html.H2('Clientes', style={'textAlign': 'center', 'color': 'black'}),
    dcc.Graph(
        id='clientsavg_graph',
        figure=fig2
    ),

    html.H2('Peliculas de tipo Drama con Media de calificaciones de más de 9', style={'textAlign': 'center', 'color': 'black'}),
    html.P(id='table_out'),
    dash_table.DataTable(
        id='table',
        columns=[{"name": i, "id": i} 
                 for i in df3.columns],
        data=df3.to_dict('records'),
        style_cell=dict(textAlign='left'),
        style_header=dict(backgroundColor="paleturquoise"),
        style_data=dict(backgroundColor="lavender")
    ), 

])


app.run_server(debug=True)