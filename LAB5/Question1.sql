mysql> CREATE DATABASE Mydbms35;
Query OK, 1 row affected

mysql> USE Mydbms35;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (10,'Lex',' Haan',17000),
    -> (20,'Alexander','Hunold',9000),
    -> (30,'Kimberely','Grant',7000),
    -> (40,'William','Smith',8000),
    -> (50,'Penny','Bull',4100),
    -> (60,'Neena','Kochhar',17000),
    -> (70,'Steven','King',24000);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bull'
    -> );
