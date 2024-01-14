SET search_path = formula_1_s, "$user", public;

CREATE TABLE status (
						statusId	numeric,	
						status		text
)


SELECT * FROM status;


COPY status FROM 'C:\Users\ArshiaAchar\Desktop\DS_projects\Formula_1\datasets\status.csv' WITH CSV HEADER DELIMITER ',';



SELECT * FROM status;


-- No changes required in this table