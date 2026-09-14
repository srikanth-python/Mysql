create database student;
use student;
show databases;
create table student_details
(std_id int,std_name varchar(30),std_address varchar(50),std_email varchar(40));
desc student_details;
show tables;
insert into student_details values(101,'sriaknth','reponi','srikanth@gmail.com'),
(102,'sri','vijawada','sri@gamil.com'),(103,'laddu','hyderabad','laddu@gamil.com');
select * from student_details;
SET SQL_SAFE_UPDATES=0;
update student_details set std_name='srinu' where std_id=102;
select * from student_details where std_id=102;
select std_name from student_details;
select std_id from student_details;
select std_email from student_details;
rename table student_details to student_data;
show tables;
delete from student_data where std_id=103;
select * from student_data where std_id=103;
select * from student_data;
alter table student_data add std_phone varchar(20);
desc student_data;
select * from student_data;
update student_data set std_phone=9949894096 where std_id=101;
update student_data set std_phone=8106541006 where std_id=102;
select * from student_data;
alter table student_data add std_branch varchar(10);
select * from student_data;
#if you want to give all same branch then use this
update student_data set std_branch='aiml';
select * from student_data;
alter table student_data add column std_marks int;
desc student_data;
select * from student_data;
#when the different values are to be updated
update student_data set std_marks=case std_id
when 101 then '90'
when 102 then '80'
end;
select * from student_data;
alter table student_data drop column std_branch;
select * from student_data;
alter table student_data rename to student_details;
show tables;
rename table student_details to student_data;
show tables;
alter table student_data rename column std_name to name;
desc student_data;
alter table student_data modify column std_id tinyint;
desc student_data;
create table employee(emp_id int primary key,emp_name varchar(20) not null,emp_email varchar(40)
unique,emp_age int check(emp_age>18),emp_salary decimal(10,2) default 200000);
desc employee;
insert into employee values(101,'sriaknth','srikanth@gmail.com',17,20000000);
insert into employee values(101,'sriaknth','srikanth@gmail.com',21,20000000);
select * from employee;
insert into employee values(102,'sri','srik@gamil.com',22,3000000);
select * from employee;
insert into employee values(104,'srinu','srinu@gmail.com',23);
insert into employee(emp_id,emp_name,emp_email,emp_age) values(104,'srinu','srinu@gmail.com',23);
select * from employee;
show tables;
desc student_data;
desc employee;
alter table student_data add primary key(std_id);
alter table student_data add unique(std_email);
alter table student_data add column age int;
alter table student_data add check(age>18);
alter table student_data alter column std_address set default 'reponi';
alter table student_data modify column name varchar(20) not null;
desc student_data;
create table course(cour_id int primary key,cour_name varchar(20),cour_branch varchar(20));
create table marks(mark_id int primary key,mark int);
desc course;
alter table course rename column cour_fee to cour_branch;
desc course;
desc marks;
alter table marks add column cour_id int;
alter table marks add constraint fk_course foreign key(cour_id)
references course(cour_id);
desc marks;
desc course;
#forgine key
create table course(cour_id int primary key,cour_name varchar(30),cour_branch varchar(20));
create table marks(mark_id int primary key,mark int,course_id int);
insert into course values(101,'python','aiml'),(102,'java','cse'),(103,'c++','csd');
insert into marks values(301,80,101),(302,90,102),(303,95,103);
alter table marks rename column course_id to cour_id;
alter table marks add constraint fk_course foreign key(cour_id)
references course(cour_id);
select * from marks;
select * from course;
select * from course join marks on course.cour_id=marks.cour_id;
show create table marks;
select course.cour_id,cour_name,cour_branch,mark,mark_id from course join marks on course.cour_id=marks.cour_id;
select marks.cour_id,cour_name,cour_branch,mark,mark_id from course join marks on course.cour_id=marks.cour_id;
#day2
use student;
select * from final_data;
select orderdate from final_data;
#distinct
select distinct orderdate from final_data;
select Quantity,discount,age from final_data;
select distinct quantity,discount,age from final_data;
#order by
select distinct quantity from final_data order by quantity asc;
select distinct quantity from final_data order by quantity desc;
select distinct quantity from final_data order by quantity desc limit 4;
select distinct quantity,discount,age from final_data order by quantity,discount,age asc limit 3;
select * from final_data where city='kerman' and city='tehran';
select * from final_data where city='kerman' or city='tehran';
select * from final_data where PaymentMethod='Wallet';
select * from final_data where city='kerman' and age=18;
#in
select * from final_data where city in ('kerman','tehran','qom','shiraz','karaj');
select * from final_data where city<>'kerman';
select * from final_data where city!='tehran';
#not in
select * from final_data where city not in ('kerman','tehran');
select distinct quantity,discount,age from final_data where age>30;
#arithmetic operators
select distinct quantity,age,discount,discount+10 as total_discount from final_data;
select distinct quantity,age,discount,discount-10 as total_discount from final_data;
select distinct quantity,age,discount,discount*3 as total_discount from final_data;
select distinct quantity,age,discount,discount/3 as total_discount from final_data;
select distinct quantity,age,discount,discount%3 as total_discount from final_data;
select distinct quantity,age,discount,discount div 3 as total_discount from final_data;
#assignment operators
set @num=10;
select @num;
select distinct quantity,age,discount,@discount=10 as total_discount from final_data;
#group by
select distinct quantity,age,discount,count(*) as total_count from final_data group by quantity,age,discount;
#having
select distinct quantity,age,discount,count(*) as total_count from final_data group by quantity,age,discount having count(*)<10;
select orderid from final_data where orderid between 500001 and 500010;
select * from final_data where orderdate between 2025-08-28 and 2026-02-10;
select * from final_data where orderid between 500001 and 500010;
#bitwise operators
select 2&4 as result;
select 4&8 as result;
select 4>>5 as result;
select 4<<5 as result;
#special operators
#like,is null,is not null,not between,as,between
select distinct paymentmethod from final_data where paymentmethod like 'w%';
select distinct paymentmethod from final_data where paymentmethod like '_a%';
select paymentmethod from final_data where paymentmethod is null;
select paymentmethod from final_data where paymentmethod is not null;
select paymentmethod,isnull(paymentmethod) as result from final_data; 
#numerical functions
#round
select round(100000.0000,1);
select round(100000.0000,0);
#ceil()
select ceil(23.44);
#floor()
select floor(23.45);
#power()
select power(4,2);
select ordervalue,power(ordervalue,2) as result from final_data;
#sqrt()
select sqrt(16);
select ordervalue,sqrt(ordervalue) as result from final_data;
#abs()
select abs(-49) as result;
#mod()
select mod(10,3) as result;
select ordervalue,mod(ordervalue,3) as result from final_data;
#sign()
select sign(23);
select sign(-23);
select ordervalue,sign(ordervalue) as result from final_data;
#rand()
select rand(39);
#greatest()
select greatest(10,30);
select ordervalue,discount,greatest(ordervalue,discount) as result from final_data;
#least()
select least(20,30);
select ordervalue,discount,least(ordervalue,discount) as result from final_data;
#string functions
#upper()
select upper('srikanth');
select paymentmethod,upper(paymentmethod) as result from final_data;
#lower()
select lower('SRIKANTH');
#length()
select length('sriaknth');
select paymentmethod,length(paymentmethod) as result from final_data;
select length('😂');
#char_length()
select char_length('hee');
select char_length('😂');
#left()
select left('srikanth',3);
#right()
select right('sriaknth',5);
#substring
select substring('srikanth',3,5);
#trim()
select trim('  srikanth   ');
select trim('   srikanth srinu   ');
#replace()
select replace('sriaknth','sri','sriram');
#concat() 
select concat('srikanth','.','k');
select concat('srikanth','k');
#concat_ws()
select concat_ws('/',2020,30,5);
select concat_ws(2020,'/',30,'/',5);
#lpad()
select lpad('srikanth',12,'@');
select lpad(120,5,0);
#rpad()
select rpad(120,5,0);
select rpad('srikanth',12,'@');
#date functions
#now()
select now();
#curtime()
select curtime();
#curdate()
select curdate();
#sysdate()
select sysdate();
#year()
select year(now());
select year(curdate());
select year('2025-03-09');
#month()
select month(now());
select month(curdate());
#day()
select day(curdate());
#dayname()
select dayname('2025-03-09');
#datediff()
select datediff('2026-09-9','2025-03-09');
#date_add()
select date_add('2026-09-9',interval 5 day);
#date_sub()
select date_sub('2026-09-9',interval 4 day);
#date_format()
select date_format(now(),'%y,%M,%d');
select date_format(now(),'%y-%M-%d %h:%i:%s');
select date_format(now(),'%y/%m/%d');
#str_to_date()
select str_to_date('2026-09-05','%y-%m-%d');
#Aggregate functions
select * from final_data;
#count()
select count(*) as total_rows from final_data;
select count( distinct quantity) from final_data;
#sum()
select sum(quantity) from final_data; 
select sum(distinct quantity) from final_data;
select distinct quantity from final_data;
#avg()
select avg(quantity) from final_data;
select avg(distinct quantity) from final_data;
#min()
select min(quantity) from final_data;
#max()
select max(quantity) from final_data;







 

































