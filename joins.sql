use world;
desc city;
desc country;
#inner join
select city.name as cityname,country.name as countryname
from city
inner join country
on city.countrycode=country.code; 

#natural join
select * from city
join country;

#equi join
select c.name as country,ci.name as city
from country c
join city ci
on c.code=ci.countrycode;

#non-equi
select country.name as country,country.population as countrypop,city.name as city,city.population as citypop
from country
join city
on country.population<city.population;

#left join
select city.name as city ,country.name as country
from city
left join country
on city.countrycode=country.code;

#right join
select city.name as city,country.name as country
from city
right join country
on city.countrycode=country.code;

#full outer join
select city.name as city ,country.name as country
from city
left join country
on city.countrycode=country.code
union
select city.name as city,country.name as country
from city
right join country
on city.countrycode=country.code;
#cross join
select city.name as city,country.name as country
from city
cross join country;
#self join
select c1.name,c2.name,c1.continent,c2.continent,c1.population,c2.population 
ABS(c1.population-c2.population) as pop_diff
from country c1
join country c2 on c1.continent=c2.continent
where c1.name<c2.name;

#joins practise
#inner join
use world;
create table student1(std_id int,std_name varchar(30),std_marks int);
insert into student1 values(101,'srikanth',90),(102,'sri',95),(103,'ram',85);
create table student3(std_id int,std_name varchar(40),std_marks int,std_branch varchar(20));
insert into student3 values(101,'srikanth',90,'aiml'),(102,'sri',95,'cse');
#inner join
select distinct  student1.std_name as name,
student3.std_branch as branch
from student1
inner join student3
on student1.std_id=student3.std_id;
#inner table 
select distinct city.name,city.population,country.continent
from city
inner join
country
on city.countrycode=country.code;

#natural join
select * from city join country;
select * from student1 
join student3;
#non equi join
select distinct student1.std_name,student3.std_marks,student3.std_branch
from student1 
join student3
where student1.std_marks>90;
#equi join

select distinct student1.std_name,student3.std_marks,student3.std_branch
from student1 
join student3
on student1.std_marks=student3.std_marks
where  student1.std_marks=90;

#left join
select city.name as city ,country.name as country
from city
left join
country
on city.countrycode=country.code;
select distinct student1.std_name,student3.std_branch
from student1
left join
student3
on student1.std_id=student3.std_id;

select distinct student1.std_name,student3.std_branch
from student1
right join
student3
on student1.std_id=student3.std_id;

#full join
select distinct student1.std_name,student3.std_branch
from student1
left join
student3
on student1.std_id=student3.std_id
union
select distinct student1.std_name,student3.std_branch
from student1
right join
student3
on student1.std_id=student3.std_id;

#cross join
select distinct student1.std_name,student3.std_branch
from student1
cross join
student3; 



