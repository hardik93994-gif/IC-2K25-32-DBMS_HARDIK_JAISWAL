mysql> CREATE DATABASE Mydbms45;
Query OK, 1 row affected

mysql> USE Mydbms45;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> job_id VARCHAR(20),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 'IT_PROG', 30000),
    -> (1002, 'Shyam', 'Sharma', 'SH_CLERK', 25000),
    -> (1003, 'Hardik', 'Jaiswal', 'IT_PROG', 50000),
    -> (1004, 'Harkirat', 'Saluja', 'SH_CLERK', 28000),
    -> (1005, 'Darshan', 'Jain', 'SA_REP', 35000),
    -> (1006, 'Rohan', 'Sharma', 'IT_PROG', 40000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > ALL (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE job_id = 'SH_CLERK'
    -> )
    -> ORDER BY salary ASC;
