SET search_path = formula_1_s, "$user", public;

CREATE TABLE results (
						resultId		numeric PRIMARY KEY,
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
						rank			numeric,
						fastestLapTime	text,
						fastestLapSpeed	text,
						statusId		numeric

)


SELECT * FROM results;


COPY results FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\results.csv' WITH CSV HEADER DELIMITER ',';


-- ERROR:  invalid input syntax for type numeric: "\N"
-- CONTEXT:  COPY results, line 7, column milliseconds: "\N" 

ALTER TABLE results 
ALTER COLUMN milliseconds TYPE text,
ALTER COLUMN fastestLap  TYPE text,
ALTER COLUMN rank		  TYPE text

COPY results FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\results.csv' WITH CSV HEADER DELIMITER ',';

ALTER TABLE results 
ALTER COLUMN position TYPE text,
ALTER COLUMN number TYPE text

COPY results FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\results.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM results;

-- There were changes in the datatypes of multiple columns, please check how to clean the same and convert them 

-- Count of rows are matching with the csv
-- Check if we can serialize the resultid primary key 
-- Check for any foreign keys 
