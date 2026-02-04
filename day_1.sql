CREATE DATABASE collage;
use collage;

CREATE TABLE students_ (
student_id INT PRIMARY KEY,
student_name varchar(100),
student_dep varchar(100),
student_fee int
);

INSERT INTO students_
(student_id,student_name,student_dep,student_fee)
VALUES
(1,"kaif","ai&ml",85000),
(2,"danish","ai&ml",450000),
(3,"taleeb","ai&ds",37900),
(4,"aziz","ai&ml",64500),
(5,"kaif jamali","ai&ml",78000);

SELECT * FROM students_







