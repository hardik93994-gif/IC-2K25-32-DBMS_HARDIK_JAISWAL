mysql> create database countrydbms;
Query OK, 1 row affected (0.01 sec)

mysql> use countrydbms;
Database changed
mysql> create table countries(
    -> country_id INT,
    -> country_name VARCHAR(50),
    -> region_id INT,
    -> CHECK (country_name IN('Italy','India','China'))
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO countries VALUES (1, 'India', 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO countries VALUES (2, 'Italy', 2);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO countries VALUES (3, 'China', 3);
Query OK, 1 row affected (0.01 sec)

mysql> desc countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from  countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |         1 |
|          2 | Italy        |         2 |
|          3 | China        |         3 |
+------------+--------------+-----------+
3 rows in set (0.00 sec)
