#DDL:-Data Defination Languages
#create,truncate,drop,rename,alter
create database student;
use student;
create table students(std_id tinyint,std_name varchar(50),age tinyint,ph_no varchar(20));
desc students;
select * from students;
#to add or remove column
#to rename the column or table
#to modify a column datatype
#drop database
#drop table
#alter
#alter table table_name add column column_name datatype;
alter table students add column email varchar(50);
select * from students;
#remove
#alter table table_name drop column column_name;
alter table students drop column age;
select * from students;
#alter table table_name modify column column_name new datatype;
alter table students modify column std_id int;
#alter table table_name rename to new_table_name;
alter table students rename to stude;
select * from stude;
desc stude;
#alter table table_name rename column old_column_name to new_column_name;
alter table stude rename column std_name to name;
select * from stude;
#drop 
drop table stude;
drop database student;
#DML->data manipulation language
#insert,update,delete
create table employee(emp_id tinyint,emp_name varchar(50),salary decimal(10,2),
age tinyint,ph_no varchar(20),email varchar(50));
insert into employee values
(101,"srikanth",300000,21,8106541006,"srikanthkonda@gmail.com"),
(102,"laddu",400000,22,8106541234,"laddu@gamil.com"),
(103,"prakash",500000,23,8106544561,"prakash@gmail.com");
select * from employee;
select * from employee where emp_id=101;
select salary from employee;
SET SQL_SAFE_UPDATES=0;
#delete
delete from employee where emp_id=102;
#update
update employee set salary=200000 where emp_id=101;
select * from employee;
#truncate
truncate table employee;
select * from employee;
#adding constraints to the existing tables
#adding primary key
#alter table table_name add constraint_name(column_name);
alter table students add primary key(std_id);
desc students;
#unique
alter table students add unique(ph_no);
desc students;
#check
alter table students add column age tinyint;
desc students;
alter table students add constraint check(age>18);
desc students;
#default
#alter table table_name alter column column_name set default value;
alter table students alter column course set default "python";
#not null 
#alter table table_name modify column column_name datatype not null;
alter table students modify column std_name varchar(30) not null;
desc students;
#foreign key
create table course(course_id int primary key,course_name varchar(50));
create table stu(std_id int primary key,stu_name varchar(50),course_id int);
alter table stu add constraint fk_course foreign key(course_id)
references course(course_id);
desc course;
desc stu;












