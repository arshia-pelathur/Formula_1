SET search_path = formula_1_s, "$user", public;

CREATE TABLE pit_stops (
						raceId		numeric,
						driverId	numeric,
						stop		numeric,
						lap			numeric,
						time		text,
						duration	numeric,
						milliseconds numeric

)

SELECT * FROM pit_stops;


COPY pit_stops FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\pit_stops.csv' WITH CSV HEADER DELIMITER ',';


-- ERROR:  invalid input syntax for type numeric: "16:44.718"
-- CONTEXT:  COPY pit_stops, line 753, column duration: "16:44.718" 

ALTER TABLE pit_stops 
ALTER COLUMN duration TYPE text;

COPY pit_stops FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\pit_stops.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM pit_stops;

-- Number of rows are matching with the count in the csv file.
-- Check for any foreign keys