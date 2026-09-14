use world;

select * from country;
#union
select name,continent
from country
where continent='asia'
UNION
select name,continent
from country
where continent='europe';

select name,population
from country
where population>5000000
union
select name,population
from country
where population>1000000;

select name,population
from city
union
select name,population
from country;
#union all
select name,continent from country
where continent='asia'
union all
select name,continent
from country
where continent='europe';

select name
from city
where countrycode='IND'
union
select name
from city
where countrycode='IND';

select name
from city
where countrycode='IND'
union all
select name
from city
where countrycode='IND';
#intersect
-- select name,population
-- from country
-- where population>100000
-- intersect
-- select name,population
-- from country
-- where population<500000;
select name,population
from country
where population>1000000 and population<5000000;
#except
-- select name,continent,popualtion from country
-- except
-- select name,continent,population
-- from country
-- where continent='asia' and population>500000;
select name,population
from country
where continent='asia' and population>5000000;
#practise
use world;
select name,population
from country
where continent='asia'
union
select name,population
from country
where continent='europe';
select name,population from country where continent in ('asia','europe');

select name,population
from city
where population>2000000
union 
select continent,population
from country
where population>10000000;

select * from city;

select continent,population
from country
where population>10000000;

-- select name,population
-- from city
-- where population>2000000
-- union 
-- select indep year,population
-- from country
-- where population>10000000;#error
#union all
select name,population
from city
where population>300000
union all
select countrycode,population
from city
where population>400000;
select name,population
from country
except
select name,population
from country
where population>300000000;

select name ,population
from country
where population>3000000
intersect
select name,population
from country
where population<9000000;
create table student1(std_id int,std_name varchar(30),std_marks int);
insert into student1 values(101,'srikanth',90),(102,'sri',95),(103,'ram',85);
create table student3(std_id int,std_name varchar(40),std_marks int,std_branch varchar(20));
insert into student3 values(101,'srikanth',90,'aiml'),(102,'sri',95,'cse');
select std_name,std_marks
from student1

where std_marks>85
intersect
select std_name,std_marks
from student3
where std_marks>89;

select std_name,std_marks
from student1
where std_marks>80
except
select std_name,std_marks
from student3
where std_marks>90;







