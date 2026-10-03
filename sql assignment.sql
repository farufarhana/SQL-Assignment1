CREATE database employee;
USE employee;
CREATE table departments(department_id int,department_name varchar(100));
CREATE table location(location_id int,location varchar(30));
CREATE table employees(employee_id int,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),
department_id int,location_id int,salary decimal(10,2));
ALTER table employees add column email varchar(100);
ALTER table employees modify column designation varchar(150);
ALTER table employees drop column age;
ALTER table employees rename column hire_date to date_of_joining;
RENAME table departments to departments_info;
RENAME table location to locations;
TRUNCATE table employees; 
DROP table employees;
DROP database employee;
DROP database if exists employee;
CREATE database employee;
use employee;  
create table departments(
department_id int primary key,department_name varchar(100) not null unique);
create table location(location_id int auto_increment primary key,location varchar(30) not null unique);
create table employees(
employee_id int primary key,employee_name varchar(50) not null,gender enum('M','F'),age int check(age>=18),hire_date date default (current_date),designation varchar(100),
department_id int,location_id int,salary decimal(10,2),
foreign key (department_id)
references departments(department_id),
foreign key(location_id)
references location(location_id));



  


