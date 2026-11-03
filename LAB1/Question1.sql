mysql> create database Mydbms;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms;
Database changed
mysql> create table countries (country_id varchar(2),country_name varchar(40),region_id Decimal(10,0),primary key(country_id));
Query OK, 0 rows affected (0.19 sec)

mysql> show tables;
+--------------------+
| Tables_in_Mydbms |
+--------------------+
| countries          |
+--------------------+
1 row in set (0.01 sec)

mysql> desc countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| country_id   | varchar(2)    | NO   | PRI | NULL    |       |
| country_name | varchar(40)   | YES  |     | NULL    |       |
| region_id    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into countries(country_id,country_name,region_id) values('US','United States',1),('IN','India',2),('JP','Japan',2);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from countries;
+------------+---------------+-----------+
| country_id | country_name  | region_id |
+------------+---------------+-----------+
| IN         | India         |         2 |
| JP         | Japan         |         2 |
| US         | United States |         1 |
+------------+---------------+-----------+
3 rows in set (0.00 sec)

mysql>
