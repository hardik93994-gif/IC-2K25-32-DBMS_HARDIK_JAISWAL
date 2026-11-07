mysql> CREATE DATABASE Mydbms48;
Query OK, 1 row affected

mysql> USE Mydbms48;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 30000, 10),
    -> (1002, 'Shyam', 'Sharma', 40000, 10),
    -> (1003, 'Hardik', 'Jaiswal', 50000, 10),
    -> (1004, 'Harkirat', 'Saluja', 25000, 20),
    -> (1005, 'Darshan', 'Jain', 35000, 20),
    -> (1006, 'Rohan', 'Sharma', 45000, 20),
    -> (1007, 'Nitin', 'Patel', 60000, 30),
    -> (1008, 'Ankit', 'Tiwari', 40000, 30);
Query OK, 8 rows affected

mysql> SELECT employee_id, first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    ->     WHERE department_id = e.department_id
    -> );
