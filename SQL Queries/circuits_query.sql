SET search_path = formula_1_s, "$user",public;

CREATE TABLE circuits (
						circuitId	numeric PRIMARY KEY,
						circuitRef	text,
						name	text,
						location	text,
						country	text,
						lat	double precision,
						lng	double precision,
						alt	numeric,
						url text
)

SELECT * FROM circuits;

COPY circuits FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\circuits.csv' WITH CSV HEADER DELIMITER ',';

--ERROR:  invalid input syntax for type numeric: "\N"
--CONTEXT:  COPY circuits, line 24, column alt: "\N" 

ALTER TABLE circuits 
ALTER COLUMN alt TYPE text;

SELECT * FROM circuits;

COPY circuits FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\circuits.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM circuits;

-- Total rows are matching with the total rows in the csv file. The alt column will be taken care of after importing all the datasets.