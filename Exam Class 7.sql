/* bước 1: Phân tích yêu cầu
1. Output (Gốc/ phái sinh)
2. Input
3. Điều kiện lọc theo trường nào (Gốc hay phái sinh)
*/

-- Câu 1
select name
from STUDENTS
where marks > 75
order by right(name, 3), ID

-- Câu 2
select user_id,
concat(upper(left(name,1)), lower(right(name, length(name)-1))) as name
from Users
order by user_id

-- Câu 3
SELECT manufacturer,
'$' || round(sum(total_sales)/1000000,0) || ' million' as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer

-- Câu 4
SELECT 
extract(month from submit_date) as mth,
product_id as product,
round(avg(stars),2) as avg_stars
FROM reviews
group by mth, product
order by mth, product

-- Câu 5
SELECT sender_id,
count(message_id) as message_count
FROM messages
where extract(month from sent_date) = 08 and extract(year from sent_date) = 2022
group by sender_id
order by message_count DESC
limit 2

-- Câu 6
select tweet_id
from Tweets
where length(content) >  15

-- Câu 7
select
activity_date as day,
count(distinct user_id) as active_users 
from Activity
where activity_type in ('open_session', 'end_session', 'scroll_down', 'send_message')
        and activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by day

-- Câu 8
select joining_date,
count(id) as number_employees_hired
from employees
where joining_date between '2022-01-01' and '2022-08-01'
group by joining_date

-- Câu 9
select 
position('a' in first_name)
from worker
where first_name = 'Amitah'

-- Câu 10
select 
substring(title, length(winery)+2,4)
from winemag_p2
where country = 'Macedonia'
