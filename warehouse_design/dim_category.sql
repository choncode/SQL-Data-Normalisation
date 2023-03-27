\c topmodelsql

DROP TABLE IF EXISTS dim_category;

CREATE TABLE dim_category
(category_id SERIAL PRIMARY KEY,
category VARCHAR(50) NOT NULL);

INSERT INTO dim_category
(category)
SELECT DISTINCT
category
FROM models;

SELECT * FROM dim_category;