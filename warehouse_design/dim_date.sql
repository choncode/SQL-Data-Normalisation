\c topmodelsql

DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_date AS
SELECT
	date_dim as Date,
	extract(month from date_dim) AS Month,

	to_char(date_dim, 'TMMonth') AS MonthName,
	extract(day from date_dim) AS Day,

	to_char(date_dim, 'TMDay') AS WeekdayName,

	'Q' || to_char(date_dim, 'Q') AS Quartal,
	extract(week from date_dim) AS CalendarWeek
FROM (
	SELECT '2022-01-01'::DATE + sequence.day AS date_dim
	FROM generate_series(0, 364) AS sequence(day)
     ) DQ;

SELECT * FROM dim_date;

DROP TABLE IF EXISTS dim_date_formatted;

CREATE TABLE dim_date_formatted 
(date_id SERIAL PRIMARY KEY, event_date VARCHAR(50), date VARCHAR(10));

INSERT INTO dim_date_formatted
(event_date)
SELECT 
event_date
FROM models;

-- below is WIP code for converting a ISO date into DATE format
-- UPDATE dim_date_formatted SET date = '{event_date}'::DATE AS test_date_convert;
-- SELECT * FROM dim_date_formatted;

-- SELECT '15 November 2022'::DATE AS test_date_convert;

