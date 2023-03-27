\c topmodelsql

DROP TABLE IF EXISTS brands;

CREATE TABLE brands AS
SELECT
model_id, brand
FROM models_1NF;

SELECT * FROM brands;

DROP TABLE IF EXISTS models_2NF;

CREATE TABLE models_2NF AS
SELECT
DISTINCT model_id,
model_name,
area,
price_per_event,
category,
agent,
trait,
rating,
event_date,
revenue
FROM models_1NF
ORDER BY model_id;

SELECT * FROM models_2NF;

