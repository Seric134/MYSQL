drop database employee;
create database employee;
drop database employee;
create database employee;
use employee;
create table department ( department_id int primary key, department_name varchar(100) );
create table location ( location_id int primary key, location varchar(30) );
create table employees (employee_id int primary key, employee_name varchar(50), gender enum('M', 'F'),
age int, hire_date Date, designation varchar(100), department_id int, location_id int, salary decimal(10, 2),
foreign key (location_id) references department(department_id),
foreign key (location_id) references location(location_id) );
show tables;
alter table employees
add column email varchar(100);
alter table employees
modify column designation varchar(200);
alter table employees
drop column age;
alter table employees
rename column hire_date to date_of_joining;
rename table department to departments_info;
rename table location to locations;
truncate table employees;
drop table employees;
drop database employee;
drop database if exists employee;
create database employee;
use employee;
create table departments ( department_id int primary key, department_name varchar(100) not null unique );
create table locations ( location_id int auto_increment primary key, location varchar(100) not null unique );
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(200),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Locations(location_id)
);
show tables;
