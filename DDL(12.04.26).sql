-- create database database_name;
create database gokul_tech;
-- use database;
use gokul_tech;
-- DDL
-- create table table_name(columns with datatype);
create table employee(id int,name varchar(50),dept varchar(50),age int,salary int);
-- show tables; to get all tables in db
use world;
show tables;
-- show table full information
describe employee;
show columns from employee;
-- to identify the query of the table
show create table employee;
-- create new column in table
alter table employee add column email varchar(50);
-- to change data-type of column
alter table employee modify column age varchar(5);


-- 19/04/2026
-- to change column name in table
alter table employee rename column dept to department;
-- remove the column from table
alter table employee drop column age;
-- rename the table name
rename table employee to staff;
-- to remove the all rows from the table
insert into staff values(3,"Gokul","Designer",50000);
truncate table staff;
-- remove table from db
drop table staff;


create table employee(emp_id int, ename varchar(50),job_desc varchar(50),salary int);
insert into employee values(1,"Gokul","Manager",50000);
insert into employee values(2,"Praveen","Hr",55000);
insert into employee values(3,"Mohameed","Manager",30000);
insert into employee values(4,"Mithun","Manager",70000);
insert into employee values(5,"sahana","Hr",60000);
-- Data Query Language(DQL)
-- select all data from the table
select * from employee;
-- row wise select (where)
select * from employee where emp_id = 4;
-- column wise select 
select ename,salary from employee;

-- DML (Data Maniplation Languange) --> insert,update,delete
insert into employee values(6,"Sugash","Developer",40000);
insert into employee values(7,"Akshaya","Manager",53000);
insert into employee(emp_id, ename, job_desc) values(6,"Sugash","Developer");

-- update
update employee set salary = "40000",emp_id=7 where emp_id=6;
set sql_safe_updates = 0;
-- delete data row wise in table
delete from employee where emp_id=7;


-- DQL clauses
-- AND, 
select * from employee where salary < 55000 and job_desc = "Manager";
-- OR
select * from employee where job_desc = "Hrr" or job_desc = "Developer";
-- NOT IN/IN
select * from employee where job_desc in ("Manager","Developer");
select * from employee where job_desc not in ("Manager","Developer");

-- between
select * from employee where salary between 40000 and 60000;

