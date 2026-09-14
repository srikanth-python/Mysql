create database amazon;
use amazon;
select * from amazon_products;
create database srikanth;
use srikanth;
drop database srikanth;
select * from amazon_categories;
select category_name from amazon_categories;
select id from amazon_categories;
select title,category_id from amazon_products;
#distinct is used to remove the duplicates and return only unique elements
select distinct category_id from amazon_products;
select distinct title,category_id from amazon_products;
select distinct title,category_id,price from amazon_products;
select asin,title,stars,price from amazon_products;
#order by is used to sort the result either in ascending or descending order
select distinct price from amazon_products order by price asc;
select distinct price from amazon_products order by price desc;
select distinct title,price from amazon_products order by title,price asc;
select distinct title,price from amazon_products order by title,price desc;
#get only 42 price
select distinct price from amazon_products where price=42;
#get all records from 42 price
select * from amazon_products where price=42;
#get all records from 42,276
select * from amazon_products where price=42 and price=276;
select * from amazon_products where price=42 or price=276;
select * from amazon_products where price=42 or price=276 or price=99.99;
select * from amazon_products where price in (42,276,99.99);
#get all the records 






