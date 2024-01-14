SET search_path = formula_1_s, "$user",public;

CREATE TABLE driver_standings (
								driverStandingsId numeric PRIMARY KEY,
								raceId			  numeric, 
								driverId		  numeric, 
								points			  numeric,
								position		  numeric, 
								positionText	  text,
								wins			  numeric

)

SELECT * FROM driver_standings;

COPY driver_standings FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\driver_standings.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM driver_standings;

-- Number of rows are matching with the count in the csv file.
-- Check for any foreign keys
-- Check if we can serialize the primary key