/* bước 1: Phân tích yêu cầu
1. Output (Gốc/ phái sinh)
2. Input
3. Điều kiện lọc theo trường nào (Gốc hay phái sinh)
*/
--- Câu 1
select distinct CITY
from station
where ID%2=0

--- Câu 2
select 
count(CITY) - count(distinct(CITY))
from STATION

--- Câu 3
select
ceiling(avg(salary) - avg(replace(salary,'0','')))
from EMPLOYEES 

--- Câu 4
SELECT 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences) as decimal),1) as mean
FROM items_per_order

--- Câu 5
SELECT distinct
candidate_id
FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill) = 3

--- Câu 6
SELECT 
user_id,
date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where post_date >= '2021-01-01' and post_date < '2022-01-01'
group by user_id
having count(post_id) >=2

--- Câu 7
SELECT distinct
card_name,
max(issued_amount)-min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference DESC

--- Câu 8
SELECT
manufacturer,
count(drug) as drug_count,
abs(sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss desc

--- Câu 9
select
id, movie, description, rating
from cinema
where id%2=1 and description <> 'boring'
order by rating desc


--- Câu 10
select teacher_id,
count(distinct(subject_id)) as cnt
from Teacher
group by teacher_id

--- Câu 11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id

--- Câu 12
select class
from Courses
group by class
having count(student) >=5
