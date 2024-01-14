SET search_path = formula_1_s, "$user",public;

CREATE TABLE qualifying (
							qualifyId		numeric PRIMARY KEY,	
							raceId			numeric,
							driverId		numeric,
							constructorId	numeric,	
							number			numeric,
							position		numeric,
							q1				text,
							q2				text,
							q3				text

)

COPY qualifying FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\qualifying.csv' WITH CSV HEADER DELIMITER ',';

SELECT * FROM qualifying;


-- Number of rows are matching with the count in the csv file.
-- Check if we can searlize the primary key
-- Check for any foreign keys
-- Get the numeric values for the times of q1,q2,q3 and if the position is greater than 15 then convert q2 and q3 to 0 
