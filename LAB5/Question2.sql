mysql> CREATE DATABASE Mydbms36;
Query OK, 1 row affected

mysql> USE Mydbms36;
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
    -> (10, 'Administration'),
    -> (20, 'Marketing'),
    -> (60, 'IT'),
    -> (90, 'Executive');
Query OK, 4 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ram', 'Sharma', 60),
    -> (102, 'Shyam', 'Sharma', 60),
    -> (103, 'Hardik', 'Jaiswal', 60),
    -> (104, 'Harkirat', 'Saluja', 10),
    -> (105, 'Darshan', 'Jain', 90),
    -> (106, 'Rohan', 'Singh', 90);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE department_id = (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
