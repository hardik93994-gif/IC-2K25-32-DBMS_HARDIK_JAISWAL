mysql> create database Mydbms12;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms12;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (101,'Ram','Sharma',30000),
    -> (102,'Shyam','Sharma',40000),
    -> (103,'Harkirat','Saluja',35000),
    -> (104,'Hardik','Jaiswal',100000),
    -> (105,'Darshan','Jain',45000),
    -> (106,'Rahul','Tiwari',32000),
    -> (107,'Amit','Verma',38000),
    -> (108,'Aman','Gupta',42000),
    -> (109,'Rohan','Patel',36000),
    -> (110,'Rohit','Joshi',48000),
    -> (111,'Karan','Mehta',39000),
    -> (112,'Ankit','Tiwari',41000);
Query OK, 12 rows affected (0.01 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> select * from employees limit 10;
+-------------+------------+-------------+----------+
| employee_id | first_name | last_name   | salary   |
+-------------+------------+-------------+----------+
|         101 | Ram        | Sharma      | 30000.00 |
|         102 | Shyam      | Sharma      | 40000.00 |
|         103 | Harkirat   | Saluja      | 35000.00 |
|         104 | Hardik     | Jaiswal     | 100000.00|
|         105 | Darshan    | Jain        | 45000.00 |
|         106 | Rahul      | Tiwari      | 32000.00 |
|         107 | Amit       | Verma       | 38000.00 |
|         108 | Aman       | Gupta       | 42000.00 |
|         109 | Rohan      | Patel       | 36000.00 |
|         110 | Rohit      | Joshi       | 48000.00 |
+-------------+------------+-------------+----------+
10 rows in set (0.00 sec)

mysql>
