mysql> use Mydbms;
Database changed
mysql> create table dup_countries LIKE countries;
Query OK, 0 rows affected (0.06 sec)

mysql> desc dup_countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| country_id   | varchar(2)    | NO   | PRI | NULL    |       |
| country_name | varchar(40)   | YES  |     | NULL    |       |
| region_id    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql>
mysql> insert into dup_countries(country_id,country_name,region_id) values('US','UNITED STATES',1),('IN','INDIA',2),('JP','JAPAN',2);
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from dup_countries;
+------------+---------------+-----------+
| country_id | country_name  | region_id |
+------------+---------------+-----------+
| IN         | INDIA         |         2 |
| JP         | JAPAN         |         2 |
| US         | UNITED STATES |         1 |
+------------+---------------+-----------+
3 rows in set (0.01 sec)

mysql>
