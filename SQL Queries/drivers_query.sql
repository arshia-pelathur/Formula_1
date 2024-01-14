SET search_path = formula_1_s, "$user",public;

CREATE TABLE drivers (
						driverId  numeric PRIMARY KEY,
						driverRef text,
						number    numeric,
						code	  text,
						forename  text,
						surname	  text,
						dob	      date,
						nationality	 text,
						url		text

)

SELECT * FROM drivers;


COPY drivers FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\drivers.csv' WITH CSV HEADER DELIMITER ',';

--ERROR:  invalid input syntax for type numeric: "\N"
--CONTEXT:  COPY drivers, line 3, column number: "\N" 

ALTER TABLE drivers
ALTER COLUMN number TYPE text;

COPY drivers FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\drivers.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM drivers;

-- Number of rows are matching with the count in the csv file.
-- Check if we can serialize the primary key.