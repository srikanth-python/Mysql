#DDL ->Data Definition language
#create ,alter,truncate,drop,rename
create database student;
use student;
#create table students(std_id tinyint ,name varchar(30),course varchar(20) ,phn_num varchar(20));
#desc students;
#alter table table_name add column column name datatype;
#alter table students add column email varchar(50);
#desc students;
#DML ->Data manipulation language
create table employee(emp_id tinyint,emp_name varchar(50),salary decimal(10,2),dept_id tinyint,age tinyint,ph_no varchar(40),email varchar(50),
city varchar(40));
insert into employee values
(101,"srikanth",50000,1,21,8106541006,"srikanth@gmail.com","reponi"),
(102,"laddu",60000,2,22,8106541234,"laddu@gmail.com","vijawada");
select * from employee;
select salary from employee;
select * from employee where emp_id=101;
delete from employee where emp_id=102;
drop database student;
#truncate
truncate table employee;
select * from employee;
#adding constraints to the existing tables
#adding primary key
#alter table table_name add constraint_name(column_name);
alter table students add primary key(stu_id);
#unique
alter table students add unique(ph_no);
desc students;
alter table students add column age tinyint;
#check
alter table students add constraint check(age>18);





