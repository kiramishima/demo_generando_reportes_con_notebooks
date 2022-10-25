DB_URI=postgresql:///gamestop

build:
    jupytext --sync reporte_videojuegos.md | papermill -p sql_schema=$(DB_URI) | jupyter nbconvert --stdin --output reporte.pdf
