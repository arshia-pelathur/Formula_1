SET search_path = formula_1_s, "$user",public;

CREATE TABLE constructor (
							constructorId   numeric PRIMARY KEY,	
							constructorRef  text,
							name			text,	
							nationality		text,
							url				text

)

SELECT * FROM constructor;

COPY constructor FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\constructors.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM constructor;
 
-- Number of rows are matching with the count in the csv file.
-- Check if we can serialize the constructorid primary key
-- 