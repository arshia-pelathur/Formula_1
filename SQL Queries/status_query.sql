SET search_path = formula_1_s, "$user", public;

CREATE TABLE status (
						statusId	numeric,	
						status		text
)


SELECT * FROM status;


COPY status FROM 'C:\Users\balde\OneDrive\Desktop\Personal Project\Formula_1\datasets\status.csv' WITH CSV HEADER DELIMITER ',';



SELECT * FROM status;


-- No changes required in this table