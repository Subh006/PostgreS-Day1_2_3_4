CREATE TABLE EMPLOYEE (
  empId INT PRIMARY KEY,
  name VARCHAR(30),
  dept VARCHAR(20)
);

INSERT INTO EMPLOYEE(empId,name,dept)
VALUES
(1,'SUBHAJEET','ASE'),
(2,'ANKITA','SUPPORT');

ALTER TABLE EMPLOYEE
ADD salary INT;

UPDATE EMPLOYEE
SET salary=30000;

ALTER TABLE EMPLOYEE
ALTER COLUMN empid TYPE VARCHAR(10);

ALTER TABLE EMPLOYEE
DROP COLUMN salary;

SELECT * FROM EMPLOYEE;

SELECT name,dept FROM EMPLOYEE;

DROP TABLE EMPLOYEE;
