# 🏗️ ELT Data Pipeline - Clientes y Ventas

Este proyecto implementa un pipeline ELT moderno, procesando datos crudos desde CSV hasta un modelo analítico final en PostgreSQL. Simula una arquitectura tipo Medallion (Bronze → Silver → Gold), común en plataformas como Databricks, Fabric y Snowflake.

---

## 📌 Estructura del pipeline

| Capa   | Descripción |
|--------|-------------|
| 🟫 **Bronze** | Datos crudos cargados desde CSV |
| ⚙️ **Silver** | Transformaciones: limpieza, joins, enriquecimiento |
| 🟡 **Gold**   | Tablas finales listas para BI o dashboards |

---

## 🗂️ Estructura del proyecto

elt-data-pipeline-demo/
├── data/ # Archivos CSV de entrada
├── scripts/ # Script de carga a BRONZE
├── sql/ # Scripts SQL para SILVER y GOLD
├── dbt_project/ # (futuro) Proyecto dbt para transformaciones automatizadas
├── .env # Variables de conexión (no se sube)
├── .gitignore
├── requirements.txt
└── README.md


---

## 🚀 Tecnologías utilizadas

- PostgreSQL 17 + pgAdmin
- Python (pandas, SQLAlchemy)
- SQL (transformaciones manuales)
- Git + GitHub

---

## 🧪 Cómo correrlo

```bash
# 1. Clonar el repo
git clone https://github.com/leaflores1/elt_demo.git
cd elt_demo

# 2. Instalar dependencias
pip install -r requirements.txt

# 3. Configurar .env
POSTGRES_USER=postgres
POSTGRES_PASSWORD=****
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=elt_demo

# 4. Cargar datos BRONZE
python scripts/load_bronze.py

# 5. Ejecutar SQL para SILVER y GOLD desde pgAdmin

 Aprendizajes
✔ Cómo construir un pipeline ELT completo desde cero
✔ Cómo aplicar transformaciones SQL con buenas prácticas
✔ Cómo versionar y documentar un proyecto técnico
✔ Fundamentos reales para un futuro trabajo como Data Engineer

 Próximos pasos
 Agregar dbt para modularizar Silver y Gold

 Automatizar con cron o Airflow

 Visualizar con dashboards (Plotly, Metabase o Power BI)
