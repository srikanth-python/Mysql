use world;
#views
create view country_details as
select name,code,population
from country;
select * from country_details;

create view asian_countries as
select name,continent,region,population,code
from country
where continent='asia';
select * from asian_countries;

#replace view or create
create or replace view city_details as
select name,countrycode,population
from city
where countrycode='IND';

#altering a view

alter view country_details as
select name,code,population,region
from country;
select * from country_details;

alter view asian_countries as
select name,continent,population,code
from country
where continent='asia' and population>500000;
select * from asian_countries;

#dropping a view
#drop view view_name; or
#drop view if not exists;
drop view asian_countries;
select * from asian_countries;

delete from country_details
where name='Aruba';

#transcations
#begin or start transcations
begin;
update country
set population=population+10000
where code='IND';
select name,population from country
where code='IND';
rollback;
commit;
#savepoint
begin; 
update country
set population=population+30000
where code='IND';
savepoint sp1; 
update country
set population=population+40000
where code='JPN';
savepoint sp2;
update country
set population=population+30000
where code='USA';
select * from country;
rollback to savepoint sp1;#changes made after sp1 are undone
rollback to savepoint sp2;#change made after sp2 are undone


