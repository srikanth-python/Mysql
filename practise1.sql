use world;
select * from city;
select * from country;
select * from countrylanguage;
select name,countrycode
from city
where population>1000000
union
select name,code
from country
where continent='asia';

#union all
select name,countrycode
from city
where population>1000000
union all
select name,code 
from country
where continent='asia';

select name,countrycode
from city
where population>3000000
union all
select name,code
from country
where continent='asia' and continent='europe';

#intersect
#inner join
select distinct city.name
from city
inner join
country
on city.name=country.name;
#in
select city.name
from city
where city.name in (select country.name from country);

#exists
select city.name
from city
where exists (select 1
              from country
              where city.name=country.name);
              
#except
select name
from city
except 
select name 
from country;

select city.name
from city
where not exists (select 1
                  from country
                  where city.name=country.name); #good alternative methods
                  
#inner join
select distinct city.name as city_name,city.population as city_population
from city
inner join
country
on city.name=country.name;

select city.countrycode as country_code,city.name as city_name,city.population as city_population
from city
inner join
country
on city.name=country.name;

select city.name as city_name,city.population as city_population,country.population
as country_population
from city
inner join
country
on city.countrycode=country.code;
                              
select distinct countrycode from city;
select distinct code from country;

select * from city
join
country;
select * from country;
select * from city;

#equi join
select distinct c.name as city_name,ci.population as country_population
from city c
join 
country ci
on c.countrycode=ci.code;

select s.name as city_name,s.population as city_population,si.code as country_code
from city s
join 
country si
on s.name=si.name;

#non-equi join
select country.name as country_name,country.population as country_population,
city.countrycode as city_code
from country
join
city
on country.population<city.population;

select distinct country.name as country_name,country.population as country_population,
city.countrycode as city_code
from city
join
country
on city.population<country.population;

#left join
select  distinct s.name as city_name,si.continent as country_country
from city s
left join
country si
on s.countrycode=si.code;

#right join
select s.population as city_pop,si.population as country_population
from city s
right join
country si 
on s.countrycode=si.code;

#full outer join
select  distinct s.name as city_name,si.continent as country_country
from city s
left join
country si
on s.countrycode=si.code
union
select distinct s.population as city_pop,si.population as country_population
from city s
right join
country si 
on s.countrycode=si.code;

#cross join
select s.name as city_name,c.name as country_name
from city s
cross join
country c;

select s.district as city_district,si.indepyear as country_indep
from city s
cross join
country si;

#self join
#subquerys in the mysql
#single row subquery
select name,population
from country
where population>(select avg(population) from country);

select avg(population) from country;

select name,population 
from country
where population<(select avg(population) from city);
select avg(population) from city;

#mutilple-row subquries 
select distinct name,population,countrycode
from city
where countrycode in (select code from country where continent='asia');
select code from country where continent='asia';

select name,population,countrycode
from city
where population= any (select population from country where continent='asia');


select name,population,countrycode
from city
where population>any (select population from country where continent='asia');
select population from country where continent='asia';
#mutiple-column subquery
select name from 
country
where(continent,region)=(select continent,region 
                          from country 
                          where name='india');
#correlated subquery
select c1.name,c1.continent,c1.population
from country c1
where population > (select avg(c2.population) from country c2
where c1.continent=c2.continent);

select name
from city
where countrycode=(select code 
                   from country 
                   where capital=(
                                   select id 
                                   from city 
                                   where name='new delhi'));
use world;
create view city_details as
select name,countrycode,population
from city;

select * from city_details;

alter view city_details as
select name,countrycode,population
from city
where population>1000000;

select * from city_details;

create or replace view city_details as
select name,countrycode,population
from city
where countrycode='IND';

#update the data through the view
update city_details
set countrycode='IND'
where population=89063;
                                   
select * from city_details;

select * from city
where population=89063;

alter view city_details as
select name,countrycode,population
from city
where countrycode='USA';

select * from city_details;

#drop
drop view city_details;
select * from city_details;

#transactions
create table accounts(
                      account_id int primary key,
                      name varchar(50),
                      balance decimal(10,2)
                      );
insert into accounts values
(1,'srikanth',100000),
(2,'rahul',80000),
(3,'priya',120000);

select * from accounts;
start transaction;
update accounts
set balance=balance-10000
where account_id=1;

select * from accounts;
rollback;
select * from accounts;
commit;

start transaction;
update accounts
set balance=balance-5000
where account_id=2;
select * from accounts;
rollback;

start transaction;
update accounts
set balance=balance-20000
where account_id=2;
update accounts
set balance=balance+20000
where account_id=3;
commit;
select * from accounts;
rollback;

start transaction;
update accounts
set balance=balance -5000
where account_id=1;

savepoint sp1;

update accounts
set balance=balance+1000
where account_id=2;

savepoint sp2;

update accounts
set balance=balance+10000
where account_id=3;


select * from accounts;

rollback to sp1;
commit;

#procedures
delimiter //
create procedure get_details()
begin
select name,population
from city;
end //
     delimiter ;
     
call get_details();














