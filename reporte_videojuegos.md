---
jupyter:
  jupytext:
    cell_metadata_filter: tags,-all
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.14.1
  kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---

```python tags=["parameters"]
sql_schema = 'postgresql:\\\gamerstop'
```

# **Reporte de videojuegos**

```python
# Importamos las librerias a utilizar
from sqlalchemy import create_engine, inspect, MetaData, Table
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Creamos la conexion
engine = create_engine(sql_schema)
inspector = inspect(engine)
# print(inspector.get_table_names())
```

```python
connection = engine.connect()

# Seleccionamos los juegos que no tienen review
stmt = """
SELECT COUNT(a.game)
FROM game_sales as a
LEFT JOIN reviews as b on a.game = b.game
WHERE critic_score IS NULL and user_score is null
"""

results = connection.execute(stmt)
total = results.fetchall()[0][0]

print("El total de juegos sin critica y sin calificación por los usuarios es {0}".format(total))
```

# Ventas de los videojuegos

```python
stmt = """
SELECT a.year, SUM(a.games_sold) as total_games_sold
FROM game_sales as a
WHERE a.year in (SELECT year FROM top_critic_years_more_than_four_games
INTERSECT
SELECT year FROM top_user_years_more_than_four_games)
GROUP BY a.year
ORDER BY total_games_sold desc
"""

results = connection.execute(stmt)
df1 = pd.DataFrame(results.fetchall())
df1.columns = results.keys()

_, ax =plt.subplots(1,2)

# Grafica 1
sns.set_style("whitegrid")
g = sns.barplot(x='year', y='total_games_sold', data=df1, ax=ax[0])
g.set_title("Ventas x Año")
g.set(xlabel="Años", 
      ylabel="Total Ventas")

# Grafica 2
ax[1].pie(df1['total_games_sold'], labels=df1['year'],autopct='%1.1f%%')

plt.show()
```
