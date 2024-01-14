SET search_path = formula_1_s, "$user", public;

CREATE TABLE seasons (
						year	numeric,	
						url		text
)


SELECT * FROM seasons;

COPY seasons FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\seasons.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM seasons;


-- No changes required in this table