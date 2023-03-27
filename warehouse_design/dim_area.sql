\c topmodelsql

DROP TABLE IF EXISTS dim_area;

CREATE TABLE dim_area
(area_id SERIAL PRIMARY KEY,
area VARCHAR(50) NOT NULL);

INSERT INTO dim_area
(area)
SELECT DISTINCT
area
FROM models;

SELECT * FROM dim_area;