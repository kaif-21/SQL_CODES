CREATE DATABASE hitech_pvt_ltd;

use hitech_pvt_ltd;

CREATE TABLE employee(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
EMP_DEPARTMENT varchar(50),
EMP_SALARY INT not null
);

INSERT INTO EMPLOYEE
(EMP_ID,EMP_NAME,EMP_DEPARTMENT,EMP_SALARY)
values
(201,"kaif chouhan","ai&ml",50000),
(202,"taleeb chouhan","data sci",20000),
(203,"riyaz chohan","web devlopment",15000),
(204,"danish khtri","ai&ml",340000),
(205,"aziz","ai&ml",13000);

select * from employee;

UPDATE employee
SET EMP_SALARY=200000
where EMP_ID = 201;

DELETE FROM employee
WHERE EMP_DEPARTMENT="web devlopment";
