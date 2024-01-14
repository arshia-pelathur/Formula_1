SET search_path = formula_1_s, "$user", public;


CREATE TABLE sprint_results (
							resultId		numeric ,
							raceId			numeric,
							driverId		numeric,
							constructorId	numeric,
							number			numeric,
							grid			numeric,
							position		numeric,
							positionText	text,
							positionOrder	numeric,
							points			numeric,
							laps			numeric,
							time			text,	
							milliseconds	numeric,
							fastestLap		numeric,
							fastestLapTime	text,
							statusId		numeric
)


SELECT * FROM sprint_results;


COPY sprint_results FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\sprint_results.csv' WITH CSV HEADER DELIMITER ',';


ALTER TABLE sprint_results 
ALTER COLUMN position TYPE text,
ALTER COLUMN milliseconds TYPE text,
ALTER COLUMN fastestLap  TYPE text,
ALTER COLUMN fastestLapTime  TYPE text


COPY sprint_results FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\sprint_results.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM sprint_results;

-- There were changes in the datatypes of multiple columns, please check how to clean the same and convert them 
-- Count of rows are matching with the csv
-- Check for any foreign keys 