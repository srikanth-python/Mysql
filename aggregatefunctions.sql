#Aggregate functions :-
use world;
#count() :-counts the no.of records
select count(*) as tot_country from country;
select count(distinct continent) as total_conti from country;

#sum() :-calculate the sum of all numerical values
select sum(population) from country;

#avg() :-returns the avg values
select avg(population) from country;
select avg(population) from country where population>1000000;

#max() :-returns the greatest values
select max(population) from country;


#min() :-returns the least values
select min(population) from country;
select min(popualtion) from country;


#system functions
select version();
select database();
select user();
select last_insert_id();
desc city;
insert into city(name,countrycode,district,population) values('test_city','IND','AP',6506854);
select last_insert_id()

