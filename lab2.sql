DROP TABLE IF EXISTS Professor;

CREATE TABLE Professor (prof_ssn integer, PRIMARY KEY(ssn), name text,
	age integer, rank integer, speciality text);

CREATE TABLE Graduate (parent_gradssn integer, PRIMARY KEY (parent_gradssn),
	child_gradssn integer, FOREIGN KEY (child_gradssn) REFERENCES Graduate);

CREATE TABLE Project (pno integer, PRIMARY KEY (pno), sponsor text, 
	start_date text, end_date text, budget integer, prof_ssn integer,
	FOREIGN KEY (prof_ssn) REFERENCES Professor);

CREATE TABLE Dept (dno integer, PRIMARY KEY(dno), dname text, office text, 
	prof_ssn integer, FOREIGN KEY (prof_ssn) REFERENCES Professor);
