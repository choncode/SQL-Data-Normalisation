\c topmodelsql

DROP TABLE IF EXISTS dim_brand;

CREATE TABLE dim_brand
(brand_id SERIAL PRIMARY KEY,
brand VARCHAR(50) NOT NULL);

INSERT INTO dim_brand
(brand)
SELECT DISTINCT
brand
FROM models;

SELECT * FROM dim_brand;




DROP TABLE IF EXISTS dim_brand_unnested;

CREATE TABLE dim_brand_unnested
(brand_id SERIAL PRIMARY KEY,
brand VARCHAR(50) NOT NULL);

INSERT INTO dim_brand_unnested
(brand)
SELECT DISTINCT
UNNEST(STRING_TO_ARRAY(brand, ', ')) AS brand
FROM models;

SELECT * FROM dim_brand_unnested;