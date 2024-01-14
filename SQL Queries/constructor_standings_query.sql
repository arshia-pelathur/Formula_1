SET search_path = formula_1_s, "$user",public;

CREATE TABLE constructor_standings (
									constructorStandingsId	numeric PRIMARY KEY,
									raceId					numeric,
									constructorId			numeric,
									points					numeric, 
									position				numeric,
									positionText			text,
									wins					numeric

)

SELECT * FROM constructor_standings;


COPY constructor_standings FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\constructor_standings.csv'	WITH CSV HEADER DELIMITER ','

SELECT * FROM constructor_standings;

-- Number of rows are matching with the count in the csv file.
-- Check for any foreign keys and alter the table accordingly