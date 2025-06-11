-- 1. Crear silver_customers
CREATE TABLE silver_customers AS
SELECT 
  customerid,
  firstname,
  lastname,
  CONCAT(firstname, ' ', lastname) AS fullname,
  emailoptin,
  territory,
  CURRENT_TIMESTAMP AS etl_load_datetime,
  'PYTHON_ELT' AS etl_source
FROM bronze_customers;

-- 2. Crear silver_sales
CREATE TABLE silver_sales AS
SELECT 
  h.salesorderid,
  h.customerid,
  h.orderdate,
  DATE_TRUNC('month', h.orderdate::timestamp) AS order_month,
  h.territoryid,
  h.status,
  h.subtotal,
  COUNT(d.productid) AS total_products,
  SUM(d.orderqty) AS total_quantity,
  CURRENT_TIMESTAMP AS etl_load_datetime,
  'PYTHON_ELT' AS etl_source
FROM bronze_sales_header h
JOIN bronze_sales_detail d ON h.salesorderid = d.salesorderid
GROUP BY h.salesorderid, h.customerid, h.orderdate, h.territoryid, h.status, h.subtotal;
