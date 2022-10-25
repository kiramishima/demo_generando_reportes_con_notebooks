DB_URI=postgresql://postgres:123456@192.168.100.47/gamestop

build:
    jupytext --sync reporte_videojuegos.md | papermill -p sql_schema=$(DB_URI) | jupyter nbconvert --stdin --output reporte.pdf
