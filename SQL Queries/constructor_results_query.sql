SET search_path = formula_1_s, "$user",public;

CREATE TABLE constructor_results (
									constructorResultsId  numeric,
									raceId				  numeric,
									constructorId		  numeric,
									points				  numeric,
									status				  text

)

SELECT * FROM constructor_results;

COPY constructor_results FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\constructor_results.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM constructor_results;

-- Number of rows are matching with the count in the csv file.