use world;
#sub query
select avg(population) from country; #inner query

select name,population
from country
where population>25434098.1172; #outer query

#single row subquery
select name,population
from country
where population > (select avg(population) from country);
select avg(population) from country; #single input

select name,population from country
where population=(select max(population) from country);
select max(population) from country;

#multiple row subquery
select name,population,countrycode
from city
where population>any(select population from city where countrycode='USA');

select name,countrycode
from city
where countrycode in (select code from country where continent='asia');
select code from country where continent='asia'; #multiple inputs

#multiple column subquery
select name
from country
where (continent,region)=(select continent,region from country where name='india');

#correlated subquery
select c1.name,c1.continent,c1.population
from country c1
where population > (select avg(c2.population) from country c2
where c1.continent=c2.continent);

#nested subquery
select name
from city
where countrycode=(select code 
                   from country 
                   where capital=(
                                   select id 
                                   from city 
                                   where name='new delhi'));
                                   





