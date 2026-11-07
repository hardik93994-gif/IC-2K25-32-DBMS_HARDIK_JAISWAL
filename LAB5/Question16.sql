mysql> CREATE DATABASE Mydbms50;
Query OK, 1 row affected

mysql> USE Mydbms50;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ram', 'Sharma', 50000),
    -> (102, 'Shyam', 'Sharma', 45000),
    -> (103, 'Hardik', 'Jaiswal', 40000),
    -> (104, 'Harkirat', 'Saluja', 35000),
    -> (105, 'Darshan', 'Jain', 45000),
    -> (106, 'Rohan', 'Sharma', 25000);
    
Query OK, 6 rows affected

mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 1 OFFSET 4;
