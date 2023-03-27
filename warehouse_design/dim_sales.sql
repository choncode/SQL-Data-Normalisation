\c topmodelsql

DROP TABLE IF EXISTS dim_sales;

CREATE TABLE dim_sales AS
SELECT DISTINCT
model_id AS sale_id,
event_date,
price_per_event,
revenue
FROM models
ORDER BY sale_id;

SELECT * FROM dim_sales;

ALTER TABLE dim_sales ADD COLUMN tickets_sold INT;

UPDATE dim_sales SET tickets_sold = revenue / price_per_event;

SELECT * FROM dim_sales
ORDER BY sale_id;