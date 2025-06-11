import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os

# Cargar variables de entorno desde .env
load_dotenv()

# Obtener configuración desde .env
user = os.getenv("POSTGRES_USER")
password = os.getenv("POSTGRES_PASSWORD")
host = os.getenv("POSTGRES_HOST", "localhost")
port = os.getenv("POSTGRES_PORT", "5432")
db = os.getenv("POSTGRES_DB")

# Crear conexión a PostgreSQL
engine = create_engine(f"postgresql+psycopg2://{user}:{password}@{host}:{port}/{db}")

# Cargar datasets CSV
customers = pd.read_csv('data/customers.csv')
sales_header = pd.read_csv('data/sales_header.csv')
sales_detail = pd.read_csv('data/sales_detail.csv')

# Guardar como tablas BRONZE
customers.to_sql('bronze_customers', engine, if_exists='replace', index=False)
sales_header.to_sql('bronze_sales_header', engine, if_exists='replace', index=False)
sales_detail.to_sql('bronze_sales_detail', engine, if_exists='replace', index=False)

print("✅ Datos cargados correctamente a BRONZE.")
