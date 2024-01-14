SET search_path = formula_1_s, "$user", public;

CREATE TABLE races (
					raceId	numeric PRIMARY KEY,
					year	numeric,
					round	numeric,
					circuitId	numeric,
					name		text,
					date		date,
					time		time,
					url			text,
					fp1_date	text,
					fp1_time	text,
					fp2_date	text,
					fp2_time	text,
					fp3_date	text,
					fp3_time	text,
					quali_date	text,
					quali_time	text,
					sprint_date	text,
					sprint_time text

)


COPY races FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\races.csv' WITH CSV HEADER DELIMITER ',';

-- ERROR:  invalid input syntax for type time: "\N"
-- CONTEXT:  COPY races, line 91, column time: "\N" 

-- beacuse of multiple \N errors, most of the date and time columns will be converted to text while importing

ALTER TABLE races 
ALTER COLUMN time TYPE text;

COPY races FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\races.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM races;

-- Count of rows are matching with the csv
-- Check if we can serialize the raceid 
-- Check for any foreign keys 


