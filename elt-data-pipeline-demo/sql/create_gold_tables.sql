-- Tabla final de clientes
CREATE TABLE dw_customers AS
SELECT 
  customerid AS customer_id,
  fullname,
  emailoptin AS email_promotion,
  territory,
  CURRENT_DATE AS effective_date,
  etl_load_datetime,
  etl_source
FROM silver_customers;

-- Tabla final de ventas
CREATE TABLE fact_sales AS
SELECT 
  salesorderid AS order_id,
  customerid AS customer_key,
  orderdate,
  order_month,
  territoryid,
  total_products,
  total_quantity,
  etl_load_datetime,
  etl_source
FROM silver_sales;
