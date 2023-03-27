\c topmodelsql

DROP TABLE IF EXISTS models_1NF;

CREATE TABLE models_1NF AS
SELECT model_id,
model_name,
area,
price_per_event,
category,
agent,
UNNEST(STRING_TO_ARRAY(brand, ', ')) AS brand,
trait,
rating,
event_date,
revenue
FROM models;

SELECT * FROM models_1NF;