mysql> CREATE DATABASE Mydbms57;
Query OK, 1 row affected

mysql> USE Mydbms57;
Database changed

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> department_id INT,
    -> FOREIGN KEY (department_id)
    -> REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO departments VALUES
    -> (10, 'IT'),
    -> (20, 'HR'),
    -> (30, 'Finance'),
    -> (40, 'Marketing'),
    -> (50, 'Sales');
Query OK, 5 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 10),
    -> (1002, 'Shyam', 20),
    -> (1003, 'Hardik', 10),
    -> (1004, 'Harkirat', 30);
Query OK, 4 rows affected
mysql> SELECT d.department_id, d.department_name
    -> FROM departments d
    -> WHERE NOT EXISTS (
    ->     SELECT 1
    ->     FROM employees e
    ->     WHERE e.department_id = d.department_id
    -> );
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            40 | Marketing       |
|            50 | Sales           |
+---------------+-----------------+
2 rows in set
