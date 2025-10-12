# 🏢 HiTech Pvt. Ltd. - Employee Database (SQL Project)

This project is a simple **SQL-based Employee Management System** for a company named **HiTech Pvt. Ltd.**  
It demonstrates basic SQL operations such as creating a database, creating tables, inserting records, updating data, and deleting data.

---

## 🗄️ Database Information

**Database Name:** `hitech_pvt_ltd`  
**Table Name:** `employee`

---

## ⚙️ SQL Commands Used

### 1️⃣ Create Database
```sql
CREATE DATABASE hitech_pvt_ltd;
USE hitech_pvt_ltd;
CREATE TABLE employee(
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    EMP_DEPARTMENT VARCHAR(50),
    EMP_SALARY INT NOT NULL
);

INSERT INTO employee
(EMP_ID, EMP_NAME, EMP_DEPARTMENT, EMP_SALARY)
VALUES
(201, "Kaif Chouhan", "AI&ML", 50000),
(202, "Taleeb Chouhan", "Data Science", 20000),
(203, "Riyaz Chohan", "Web Development", 15000),
(204, "Danish Khatri", "AI&ML", 340000),
(205, "Aziz", "AI&ML", 13000);

SELECT * FROM employee;

UPDATE employee
SET EMP_SALARY = 200000
WHERE EMP_ID = 201;

DELETE FROM employee
WHERE EMP_DEPARTMENT = "Web Development";
