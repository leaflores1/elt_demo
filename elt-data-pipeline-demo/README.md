# ELT Pipeline de Clientes y Ventas

Este proyecto simula un pipeline ELT real en un entorno local usando PostgreSQL y Python. Se carga data cruda (BRONZE), se transforma (SILVER) y se modela para análisis (GOLD).

## Estructura

- `data/`: archivos CSV crudos
- `scripts/`: carga inicial a PostgreSQL
- `dbt_project/`: futuro proyecto para transformaciones

## Requisitos
```bash
pip install -r requirements.txt
