SET search_path = formula_1_s, "$user", public;

CREATE TABLE laptimes (
						raceId		numeric,
						driverId	numeric,
						lap			numeric,
						position	numeric,
						time		text,
						milliseconds numeric

)

SELECT * FROM laptimes;

COPY laptimes FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\lap_times.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM laptimes;

-- Number of rows are matching with the count in the csv file.
-- Check for any foreign keys