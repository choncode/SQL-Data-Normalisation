\c topmodelsql

DROP TABLE IF EXISTS areas;

CREATE TABLE catergories AS
SELECT
DISTINCT category,
area
FROM models_2NF
ORDER BY category;

SELECT * FROM categories;

DROP TABLE IF EXISTS models_3NF;

CREATE TABLE models_3NF AS
SELECT
DISTINCT model_id,
model_name,
price_per_event,
category,
agent,
trait,
rating,
event_date,
revenue
FROM models_2NF
ORDER BY model_id;

SELECT * FROM models_3NF;