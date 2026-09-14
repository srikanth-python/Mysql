use world;
select * from city;
select * from country;
select * from countrylanguage;
select countrycode,language from countrylanguage;
#it will dispaly mutiple repeated countrycode,language
#distinct is used to remove the duplicates and return only unique elements
select distinct countrycode from countrylanguage;
select distinct countrycode,language from countrylanguage;
#order by is used to sort the result either in ascending or descending order
select distinct countrycode from countrylanguage order by countrycode asc;
select distinct countrycode,language from countrylanguage order by 
countrycode,language asc;
select distinct countrycode from countrylanguage order by countrycode desc;
select distinct countrycode,language from countrylanguage order by countrycode,language desc;
#get only english language
select distinct language from countrylanguage where language="english";
select language from countrylanguage where language="english";
#get all records from english language
select * from countrylanguage where language="english";
#get all records from english,hindi 
select * from countrylanguage where language="english" and language="hindi";
select * from countrylanguage where language="english" or language="hindi";
#get all records from english,hindi,spanish,dutch
select * from countrylanguage where language="english" or language="hindi" or 
language="spanish" or language="dutch";
#in 
select * from countrylanguage where language in ("english","hindi","spanish","dutch");
#get all the records from language="english" and countrycode=ABW
select * from countrylanguage where language="english" and countrycode="ABW"; 
#get all the unique records of language except english
select distinct language from countrylanguage where language!="english"; 
select distinct language from countrylanguage where language <>"english";
#not in 
select distinct language from countrylanguage where language not in ("english","hindi");
#get the list of languagies which has percentage greater then 5
select language,percentage from countrylanguage  where percentage>5 ;
select language,percentage from countrylanguage where percentage>30 order by percentage asc;
select language,percentage from countrylanguage where percentage>50 order by percentage desc;
#get all the laguages which has percentages between 40 - 80
select language,percentage from countrylanguage where percentage between 30 and 80 ;
select language,percentage from countrylanguage where percentage between 30 and 80 order by percentage asc;
select language,percentage from countrylanguage where percentage between 70 and 90;
#get all languages from spanish to english
select language from countrylanguage where language between "dutch" and "french";
#get english and hindi languages percentages>80
select language,percentage from countrylanguage where language in ("english","hindi") and percentage>80; 
select language,percentage from countrylanguage where language in ("english","hindi") and percentage>80 order by percentage asc;
#and,or,in,not in,between,!=,<>
#day2
show tables;
select * from city;
select * from country;
select * from countrylanguage;
#order by
select name,population from country order by population desc;
#limit
select name,population from country order by population desc limit 3;
#distinct
select distinct continent from country;
select distinct language from countrylanguage;
#group by
select continent,count(*) as total_countries from country group by continent;
#having
select continent,count(*) as total_countries from country group by continent
having count(*)>30;
#operators in mysql
#arithmetic operator
select name,population,population+1000 as updated_pop from country;
select name,population,population*3 as update_pop from country;
#comparison operation
select name,population from country where population>10000000;
#assignment operations
set @num=100;
select @num+5;
set @name="srikanth";
select @name;
#logical operators
#and
select name,continent,population from country where continent="asia" and population>10000000;
#or
select name,continent from country where continent="europe" or continent="africa";
#not
select name,continent,population from country where not continent="asia";
#bitwise operators
select 9&8 as result;
select 6<<2 as result;
#special operators
#like
select name from country where name like 'I%';
select name from country where name like '_e%';
select name from country where name like '%land';
#as column aliasing
select name as country_name from country;
#is null retrieves empty records
select name,headofstate from country where headofstate is null;
select name,headofstate from country where headofstate is not null;
#ISNULL() 1->null 0->not null
select name,headofstate,isnull(headofstate) from country;
select headofstate from country;
select headodstate,count(*) as total_null from country group by headofstate is null;












 