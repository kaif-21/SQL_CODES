create table emp_exercise(
emp_name varchar(50),
emp_id int unique key,
designation varchar(50),
age int,
salary float
);


INSERT INTO emp_exercise values( "kaif",1,"ai programmer",21,78665),
("danish",2,"developer",23,56789),
("taleeb",3,"cse",24,45678);

INSERT INTO emp_exercise values( "soniya",4,"ai programmer",21,78665),
("aziz",5,"developer",22,56789),
("raaj",6,"data analysis",24,45678);

INSERT INTO emp_exercise values( "faizz",7,"ai programmer",21,78665),
("durga",8,"developer",33,56789),
("dogesh",9,"cse",24,45678);

INSERT INTO emp_exercise values( "anwar",10,"ai programmer",21,35665),
("aziz kumar",11,"developer",36,23789),
("raajesh",12,"data analysis",24,34678);

INSERT INTO emp_exercise values( "faisal",13,"ai programmer",21,23665),
("muhammed",14,"developer",26,19000),
("taleeban",15,"cse",24,23000);

select * from emp_exercise;

hgy
update emp_exercise set designation='database', age=23 WHERE emp_id=2
