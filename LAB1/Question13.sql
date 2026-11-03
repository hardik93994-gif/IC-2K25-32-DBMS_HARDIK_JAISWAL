mysql> CREATE DATABASE Mydbms123;
Query OK, 1 row affected

mysql> USE Mydbms123;

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2),
    -> country_name VARCHAR(40),
    -> region_id INT,
    -> UNIQUE (country_id, region_id)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO countries VALUES
    -> ('IN', 'India', 1),
    -> ('US', 'United States', 2),
    -> ('UK', 'United Kingdom', 3),
    -> ('JP', 'Japan', 4);

Query OK, 4 rows affected
mysql> SELECT * FROM countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
| IN         | India          |         1 |
| US         | United States  |         2 |
| UK         | United Kingdom |         3 |
| JP         | Japan          |         4 |
+------------+----------------+-----------+
4 rows in set
