MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| abilash_aprt       |
| exp2               |
| information_schema |
| lekshmi_employee   |
| mysql              |
| performance_schema |
| phpmyadmin         |
| polytechnic        |
| social_network     |
| test               |
+--------------------+
10 rows in set (0.001 sec)

MariaDB [(none)]> use abilash_aprt;
Database changed
MariaDB [abilash_aprt]> CREATE TABLE abilash_aprt(flatno. varchar(3) PRIMARY KEY AUTO_INCREMENT,flat_name VARCHAR(50));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(3) PRIMARY KEY AUTO_INCREMENT,flat_name VARCHAR(50))' at line 1
MariaDB [abilash_aprt]> CREATE TABLE abilash_aprt (flatno varchar(3) PRIMARY KEY AUTO_INCREMENT,flat_name VARCHAR(50));
ERROR 1063 (42000): Incorrect column specifier for column 'flatno'
MariaDB [abilash_aprt]> CREATE TABLE abilash_aprt (flat_no varchar(3) PRIMARY KEY AUTO_INCREMENT,flat_name VARCHAR(50));
ERROR 1063 (42000): Incorrect column specifier for column 'flat_no'
MariaDB [abilash_aprt]> CREATE TABLE lekshmi_employee(emp_id INT(10) PRIMARY KEY AUTO_INCREMENT,employee_name VARCHAR(50),date_of_joining DATE,dep_id INT(10));
Query OK, 0 rows affected (0.007 sec)

MariaDB [abilash_aprt]> CREATE TABLE lekshmi_department (dep_id INT(10) PRIMARY KEY AUTO_INCREMENT,department_name VARCHAR(50) ,emp_id INT(10));
Query OK, 0 rows affected (0.011 sec)

MariaDB [abilash_aprt]> CREATE TABLE lekshmi_payroll(pay_id INT(10) PRIMARY KEY AUTO_INCREMENT ,paid_date DATE,sal_amount INT(10),emp_id INT(10));
Query OK, 0 rows affected (0.011 sec)

MariaDB [abilash_aprt]>
MariaDB [abilash_aprt]> ALTER TABLE lekshmi_employee ADD gender ENUM('MALE','FEMALE','OTHER');
Query OK, 0 rows affected (0.006 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [abilash_aprt]> ALTER TABLE lekshmi_employee ADD FOREIGN KEY (dep_id) REFERENCES lekshmi_department(dep_id);
Query OK, 0 rows affected (0.031 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [abilash_aprt]>
MariaDB [abilash_aprt]> ALTER TABLE lekshmi_payroll ADD FOREIGN KEY (emp_id) REFERENCES lekshmi_employee(emp_id);
Query OK, 0 rows affected (0.036 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [abilash_aprt]> INSERT INTO lekshmi_department(department_name) VALUES ('a'),('b'),('c');
Query OK, 3 rows affected (0.011 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [abilash_aprt]> INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Tina','2009-09-09','Female');
Query OK, 1 row affected (0.003 sec)

MariaDB [abilash_aprt]> INSERT INTO lekshmi_payroll(paid_date,sal_amount) VALUES('2009-09-09','25000');
Query OK, 1 row affected (0.003 sec)

MariaDB [abilash_aprt]> SELECT * FROM lekshmi_employee;
+--------+---------------+-----------------+--------+--------+
| emp_id | employee_name | date_of_joining | dep_id | gender |
+--------+---------------+-----------------+--------+--------+
|      1 | Tina          | 2009-09-09      |   NULL | FEMALE |
+--------+---------------+-----------------+--------+--------+
1 row in set (0.000 sec)

MariaDB [abilash_aprt]> SELECT department_name FROM lekshmi_department;
+-----------------+
| department_name |
+-----------------+
| a               |
| b               |
| c               |
+-----------------+
3 rows in set (0.000 sec)

MariaDB [abilash_aprt]> SELECT employee_name FROM lekshmi_employee WHERE emp_id=1;
+---------------+
| employee_name |
+---------------+
| Tina          |
+---------------+
1 row in set (0.000 sec)

MariaDB [abilash_aprt]> INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Mina','2019-09-09','Female');
Query OK, 1 row affected (0.003 sec)

MariaDB [abilash_aprt]> INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Lal','2019-6-09','Male');
Query OK, 1 row affected (0.002 sec)

MariaDB [abilash_aprt]> SELECT * FROM lekshmi_employee ORDER BY employee_name ASC;
+--------+---------------+-----------------+--------+--------+
| emp_id | employee_name | date_of_joining | dep_id | gender |
+--------+---------------+-----------------+--------+--------+
|      3 | Lal           | 2019-06-09      |   NULL | MALE   |
|      2 | Mina          | 2019-09-09      |   NULL | FEMALE |
|      1 | Tina          | 2009-09-09      |   NULL | FEMALE |
+--------+---------------+-----------------+--------+--------+
3 rows in set (0.000 sec)

MariaDB [abilash_aprt]> SELECT * FROM lekshmi_employee WHERE employee_name LIKE 'l%';
+--------+---------------+-----------------+--------+--------+
| emp_id | employee_name | date_of_joining | dep_id | gender |
+--------+---------------+-----------------+--------+--------+
|      3 | Lal           | 2019-06-09      |   NULL | MALE   |
+--------+---------------+-----------------+--------+--------+
1 row in set (0.000 sec)

MariaDB [abilash_aprt]> SELECT * FROM lekshmi_employee WHERE employee_name NOT LIKE '%l';
+--------+---------------+-----------------+--------+--------+
| emp_id | employee_name | date_of_joining | dep_id | gender |
+--------+---------------+-----------------+--------+--------+
|      1 | Tina          | 2009-09-09      |   NULL | FEMALE |
|      2 | Mina          | 2019-09-09      |   NULL | FEMALE |
+--------+---------------+-----------------+--------+--------+
2 rows in set (0.000 sec)

MariaDB [abilash_aprt]> SELECT sal_amount FROM lekshmi_payroll;
+------------+
| sal_amount |
+------------+
|      25000 |
+------------+
1 row in set (0.000 sec)
