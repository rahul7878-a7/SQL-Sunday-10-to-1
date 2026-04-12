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


