#numerical functions() :-
use world;
#round()
select round(100000.0000,4);
select round(100000.0000,0);
select * from country;
select name,lifeexpectancy,round(lifeexpectancy,0) as roundvalue from country;

#ceil()->roundsup to the nearest number
select ceil(34.44);

#floor()->roundsdown to the nearest number
select floor(23.67);
select name,gnp,ceil(gnp) from country;
select name,gnp,floor(gnp) from country;

#power()->exponential
select power(4,2);
select name,population,power(population,2) from country;

#sqrt()-> find the squares
select sqrt(4);
select sqrt(16);
select name,population,sqrt(population) from country;

#abs()->returns the positive value of a number
select abs(20-25);
select name,gnp,gnpold,abs(gnp-gnpold) as differenc from country;

#mod()-> returns the remainder
select mod(10,3);
select name,population,mod(population,3) as remainder from country;

#sign()->returns positive value->1 negetive value->-1, nochange(0)
select sign(20-25);
select sign(25-20);

#rand()->generators random numbers
select rand(200000);

#greatest()->compares values and return highest value
select greatest(

#least()->compare values and return least value
select name,gnp,gnpold,least(gnpold,gnp) as leastvalue from country;

#string functions():-
#upper()->converts into uppercase
#lower()->convert into lowercase
select upper('srikanth');
select lower('SRIKANTH');
select name,lower(name) from country;
select name,upper(name) from country;

#length()->returns the length of text
select length('srikanth');
select name,length(name) as length from country;

#char_length()->returns no.of characters in a string
select length('sriaknth');
select char_length('srikanth'); 

#left()->returns character from left side of a string
#right()->returns character from right side of a string
select left('sriaknth',3);
select right('sriaknth',5);

#substring()->extracts part of a string
#substring(string,start,length)
select substring('sriaknth',3,5);

#trim()->it removes extra spaces from string
select trim('   srikanth   ');
select trim('   sriaknth  srinu  ');

#replace()->it repalces one string with another string
#replace(string,old,new)
select replace('sutherland','suther','is');

#concat()->combines the string
select concat('srikanth','.','K');
select name,concat(continent,' ',name) from country;

#locate()->this is used return the position values
select locate('united',name) from country;

#concat_ws()->combines with a seperator
select concat_ws('-',name,continent,region) from country;

#lpad()->add characters to left
#lpad(string,length,adding char)
select lpad('srikanth',12,'*');

#rpad()->add characters to the right
#lpad(string,length,adding char)
select rpad('srikanth',12,'*');
select round(125.75,-1);








