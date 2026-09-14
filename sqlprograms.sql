create database college;
use college;
create table students(std_id int,std_name varchar(20),std_branch varchar(30),std_marks int);
desc students;
insert into students values(101,'srikanth','aiml',90),(102,'srinu','csd',80),
(103,'laddu','it',85),(105,'sri','cse',95),(105,'prakash','ece',75);
select * from students;
select std_name,std_marks from students;
select std_name,std_marks from students where std_marks>=80;
select std_name,std_branch from students where std_branch='cse';
select std_name,std_marks from students where std_marks between 80 and 90;
select std_name from students where std_name like 's%';
select std_name from students where std_name like '%u';
#filtering and sorting
select std_name,std_marks from students order by std_marks desc;
select std_name,std_marks from students order by std_marks asc;
select std_name,std_marks from students where std_marks<>80;
select std_name,std_branch from students where std_branch='cse' or std_branch='aiml';
select std_name,std_branch from students where std_branch in ('aiml','cse');
select std_name,std_branch,std_marks from students where std_marks>80 and std_branch='aiml';
select std_name,std_branch from students where std_branch!='aiml';
select std_name,std_branch from students where std_branch is null;
select std_name,std_branch from students where std_branch is not null;
select * from students limit 3;
#Aggregate functions
select count(*) as result from students;
select max(std_marks) as result from students;
select min(std_marks) as result from students;
select avg(std_marks) as result from students;
select sum(std_marks) as result from students;
select std_branch,count(*) as students_count from students group by std_branch;
#students + marks
select std_name,std_marks from students where std_marks=(select max(std_marks) from students);
select std_name,std_marks from students order by std_marks desc limit 1;
select std_name,std_marks from students where std_marks=(select min(std_marks) from students);
#find the highest marks in each branch
select std_branch,max(std_marks) as highest_marks from students group by std_branch;
#group by having
select std_branch from students group by std_branch; 
select std_branch,count(*) as student_count from students 
group by std_branch having count(*)>2;
#find the second-highest marks without using limit
select max(std_marks) from students
where std_marks<(select max(std_marks) from students);
drop table students;
create table students(std_id int,std_name varchar(30),std_marks int);
desc students;
alter table students add column std_branch varchar(10);
desc students;
insert into students values(101,'sri',90,'cse'),(102,'srikanth',95,'cse'),
(103,'laddu',93,'aiml'),(104,'srinu',85,'aiml'),(105,'prakash',80,'ece');
select * from students;
#dispaly each branch using group by
select std_branch from students group by std_branch;
select std_branch,count(*) as total_count from students group by std_branch
#find the average marks of each branch
select std_branch,avg(std_marks) as average_marks
from students group by std_branch;
#find the highest marks in each branch
select std_branch,max(std_marks) as highest_marks
from students
group by std_branch;
#find the lowest marks in each branch
select std_branch,min(std_marks) as lowest_marks
from students
group by std_branch;
#find the total marks of students in each branch
select std_branch,sum(std_marks) as total_marks 
from students
group by std_branch;
#find the highest and lowest marks for each branch
select std_branch,min(std_marks) as least_marks,max(std_marks) as highest_marks
from students
group by std_branch;
select std_branch,count(*) as total_students from students
group by std_branch 
having count(*)>1;
select std_branch,count(*) as total_students from students
group by std_branch
having count(*)>=2;
select std_branch,count(*) as total_students from students
group by std_branch
having count(*)<2;
select std_branch,avg(std_marks) as total_average from students
group by std_branch
having avg(std_marks)>80;
select std_branch,max(std_marks) as highest_marks from students
group by std_branch
having max(std_marks)>90;
select std_branch,sum(std_marks) as highest_marks 
from students
group by std_branch
having sum(std_marks)>150;
#count the no of students and highest marks in the branch
select std_branch,count(*) as total_students,max(std_marks) as highest_marks
from students
group by std_branch
having count(*)>=2 and max(std_marks)>90;
select std_branch,count(*) as total_students
from students
group by std_branch
having count(*) between 1 and 2;
select std_branch,std_marks,avg(std_marks) as total_average
from students
group by std_marks,std_branch;
select std_branch from students group by std_branch;
#offset
select std_marks from students order by std_marks desc limit 1 offset 1;
select std_marks from students order by std_marks desc limit 1 offset 2;
select std_branch,avg(std_marks) as total_average 
from students 
group by std_branch;
select std_branch,avg(std_marks) as total_average
from students
group by std_branch
order by total_average desc limit 1;
select std_branch,count(*) as students_count
from students
group by std_branch
having count(*)>(select avg(branch_count) from (select count(*) 
as branch_count from students group by std_branch) as temp);











  







