\c topmodelsql

DROP TABLE IF EXISTS dim_models;

CREATE TABLE dim_models AS
SELECT DISTINCT
model_id,
model_name,
price_per_event,
trait,
rating
FROM models
ORDER BY model_id;

SELECT * FROM dim_models;

-- ALTER TABLE dim_models ADD COLUMN fav_colour VARCHAR(25);

-- UPDATE dim_models SET fav_colour = 'Red' WHERE model_name = 'Slam Dunk';
-- UPDATE dim_models SET fav_colour = 'Orange' WHERE model_name = 'Notso Neat';
-- UPDATE dim_models SET fav_colour = 'Yellow' WHERE model_name = 'Sarah B';
-- UPDATE dim_models SET fav_colour = 'Green' WHERE model_name = 'Sam Pagne';
-- UPDATE dim_models SET fav_colour = 'Blue' WHERE model_name = 'Cat Wang';
-- UPDATE dim_models SET fav_colour = 'Indigo' WHERE model_name = 'Hannah Bee';
-- UPDATE dim_models SET fav_colour = 'Violet' WHERE model_name = 'Ray Z';
-- UPDATE dim_models SET fav_colour = 'Red' WHERE model_name = 'Raul Pogerson';
-- UPDATE dim_models SET fav_colour = 'Orange' WHERE model_name = 'Starr Schema';
-- UPDATE dim_models SET fav_colour = 'Yellow' WHERE model_name = 'Rainsface W';
-- UPDATE dim_models SET fav_colour = 'Green' WHERE model_name = 'Bartholomew P';
-- UPDATE dim_models SET fav_colour = 'Blue' WHERE model_name = 'Salle De Bain';
-- UPDATE dim_models SET fav_colour = 'Indigo' WHERE model_name = 'Jarred MacKenzie';
-- UPDATE dim_models SET fav_colour = 'Violet' WHERE model_name = 'Rathbones Arr';

-- SELECT * FROM dim_models
-- ORDER BY model_id;
