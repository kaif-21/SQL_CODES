use intro_sql;
SHOW tables;
create table employees(
employee_name varchar(100) not null,
employee_id int,
manager_name varchar(100),
division int,
primary key(employee_id)
);

select * from employees;

create table emp_new(
firstname varchar(100),
lastname varchar(100),
title varchar(50),
age int,
salary int
);

select * from emp_new;

alter table
emp_new
add gender
varchar(1);

create table emp_info(
first_name varchar(50),
last_name varchar(50),
id int,
age int,
city varchar(50),
state varchar(50),
primary key (ID)
);

show tables;

INSERT INTO emp_info values("kaif","khan",1,21,"sikar","rajasthan"),
("abdul","aziz",2,22,"sikar","rajasthan"),
("taleeb","chouhan",3,23,"sikar","rajasthan"),
("danish","khatri",4,28,"sikar","rajasthan");

select * from emp_info;

select count(id) from emp_info;

select first_name,last_name,city from emp_info;
  
select * from emp_info where age>18;

select *from emp_info where first_name like 'k%';
select * from emp_info where last_name like 'f%';
select * from emp_info where age = 20 or age=21;
select * from emp_info where state like '%s%';
select *from emp_info where first_name = 'kaif';
select *from emp_info where first_name ='khan';




     




