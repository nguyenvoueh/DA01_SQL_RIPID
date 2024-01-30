---Class 3 - Examination
--Ex1
select NAME 
from CITY
where POPULATION > 120000 and COUNTRYCODE ='USA';

--EX2
select * from city
where COUNTRYCODE ='JPN';

--EX3
select CITY, STATE from STATION;

--EX4
select distinct CITY from STATION
where left(CITY, 1) in ('A', 'E', 'I', 'O', 'U');

--EX5
select DISTINCT CITY 
from STATION
where CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u';

--EX6
select distinct CITY from STATION
where left(CITY,1) not in ('U', 'E', 'O', 'A', 'I');

--EX7
select name from employee
order by name;

--EX8
select name from employee
where salary >2000 and months <10 
order by employee_id

--EX9
select product_id from products
where low_fats ='Y' and recycleable ='Y'

--EX10
select name from customer
where referee_id <> 2 or referee_id is null

--EX11
select name, population, area from World
where area >= 3000000 
    or population >= 25000000
	
--EX12
select distinct author_id as id from views
where viewer_id = author_id
order by author_id

--EX13
SELECT part, assembly_step FROM parts_assembly
where finish_date is NULL

--EX14
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >=70000

--EX15
select advertising_channel from uber_advertising
where money_spent >= 100000 and year = 2019
