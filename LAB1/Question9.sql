mysql> CREATE DATABASE Mydbms101;
Query OK, 1 row affected

mysql> USE Mydbms101 ;
Database changed

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) PRIMARY KEY,
    -> country_name VARCHAR(40),
    -> region_id DECIMAL(10,0)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO countries VALUES
    -> ('IN', 'India', 1),
    -> ('US', 'United States', 2),
    -> ('UK', 'United Kingdom', 3);
Query OK, 3 rows affected

mysql> SELECT * FROM countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
| IN         | India          |         1 |
| US         | United States  |         2 |
| UK         | United Kingdom |         3 |
+------------+----------------+-----------+
3 rows in set
