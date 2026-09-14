#date functions
#now()->returns current date and time
select now() as date_time;

#curtime() :-returns current time
select curtime();

#curdate() :-returns todays date
select curdate();

#sysdate() :-returns the current date and time 
select sysdate();

#dateextraction functions
#year():-extracts year from a data
select year(now()) as current_year;
select year(curdate()) as current_year_all;

#month() :-extracts month from a date
select month(curdate());
select monthname(curdate());

#day() :-returns a day of month
select day(curdate());
select dayofmonth(curdate());

#dayname() :-returns weekdays name
select dayname('2026-09-03');

#datediff() :-returns difference blw two days
select datediff('2026-09-03','2026-09-15');

#date_add() :-adds the date to current date
select date_add('2026-09-03',interval 4 day);

#date_sub() :-subs the date from the current date
select date_sub('2026-09-03',interval 4 day);

#date_format() :-convert the date into string
#%y-year,%m-month,%d-day,%w-weekday name,%i-minutes,%s-seconds,%h-hours,%p-pm/am
select date_format(now(),'%m/%D/%y') as form1;
select date_format(now(),'%d-%M-%y %h:%i:%s') as form2;
select date_format(now(),'%h:%i:%p') as form3;

#str_to_date() :-converts string into date
select str_to_date('03-09-2026','%Y-%m-%d') as form4;







