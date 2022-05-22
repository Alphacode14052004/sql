# sql
CREATE TABLE lekshmi_employee(emp_id INT(10) PRIMARY KEY AUTO_INCREMENT,employee_name VARCHAR(50),date_of_joining DATE,dep_id INT(10));
CREATE TABLE lekshmi_department (dep_id INT(10) PRIMARY KEY AUTO_INCREMENT,department_name VARCHAR(50) ,emp_id INT(10));
CREATE TABLE lekshmi_payroll(pay_id INT(10) PRIMARY KEY AUTO_INCREMENT ,paid_date DATE,sal_amount INT(10),emp_id INT(10));
ALTER TABLE lekshmi_employee ADD gender ENUM('MALE','FEMALE','OTHER');
ALTER TABLE lekshmi_employee ADD FOREIGN KEY (dep_id) REFERENCES lekshmi_department(dep_id);
ALTER TABLE lekshmi_payroll ADD FOREIGN KEY (emp_id) REFERENCES lekshmi_employee(emp_id);
INSERT INTO lekshmi_department(department_name) VALUES ('a'),('b'),('c');
INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Tina','2009-09-09','Female');
INSERT INTO lekshmi_payroll(paid_date,sal_amount) VALUES('2009-09-09','25000');
SELECT * FROM lekshmi_employee;
SELECT department_name FROM lekshmi_department;
SELECT employee_name FROM lekshmi_employee WHERE emp_id=1;
INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Mina','2019-09-09','Female');
INSERT INTO lekshmi_employee (employee_name,date_of_joining,gender) VALUES('Lal','2019-6-09','Male');
SELECT * FROM lekshmi_employee ORDER BY employee_name ASC;
SELECT * FROM lekshmi_employee WHERE employee_name LIKE 'l%';
SELECT * FROM lekshmi_employee WHERE employee_name NOT LIKE '%l';
SELECT sal_amount FROM lekshmi_payroll;
