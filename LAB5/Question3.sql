mysql> CREATE DATABASE Mydbms37;
Query OK, 1 row affected

mysql> USE Mydbms37;
Database changed

mysql> CREATE TABLE locations (
    -> location_id INT PRIMARY KEY,
    -> country_id VARCHAR(2)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50),
    -> location_id INT
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT,
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO locations VALUES
    -> (100, 'US'),
    -> (200, 'UK'),
    -> (300, 'CA');
Query OK, 3 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'Administration', 100),
    -> (20, 'Marketing', 200),
    -> (30, 'IT', 100),
    -> (40, 'Sales', 300);
Query OK, 4 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Alexander', 'Hunold', 100, 30),
    -> (102, 'Bruce', 'Ernst', 101, 30),
    -> (103, 'David', 'Austin', 101, 30),
    -> (104, 'Ram', 'Sharma', NULL, 10),
    -> (105, 'Steven', 'King', NULL, 10),
    -> (106, 'Shyam', 'Sharma', 105, 40),
    -> (107, 'Sarah', 'Jones', 101, 20);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE manager_id IS NOT NULL
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE location_id IN (
    ->         SELECT location_id
    ->         FROM locations
    ->         WHERE country_id = 'US'
    ->     )
    -> );
