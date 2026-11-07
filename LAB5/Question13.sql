mysql> CREATE DATABASE Mydbms47;
Query OK, 1 row affected

mysql> USE Mydbms47;
Database changed

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'IT'),
    -> (20, 'HR'),
    -> (30, 'Sales'),
    -> (40, 'Finance');
Query OK, 4 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 10),
    -> (1002, 'Shyam', 'Sharma', 20),
    -> (1003, 'Hardik', 'Jaiswal', 10),
    -> (1004, 'Harkirat', 'Saluja', 30),
    -> (1005, 'Darshan', 'Jain', 40);
Query OK, 5 rows affected

mysql> SELECT e.employee_id, e.first_name, e.last_name,
    -> d.department_name
    -> FROM employees e
    -> LEFT JOIN departments d
    -> ON e.department_id = d.department_id;
