-- Câu 1
SELECT 
sum(CASE
  when device_type in ('tablet', 'phone') then 1
  else 0
end) as mobile_views,
sum(CASE
  when device_type in ('laptop') then 1
  else 0
end) as laptop_views
FROM viewership
group by mobile_views, laptop_views

-- Câu 2
select x,y,z,
case
    when x+y>z and x+z>y and y+z>x then 'Yes'
    else 'No'
end as triangle
from Triangle

-- Câu 3
-- Câu 4
select name
from customer
where coalesce(referee_id, '') <> 2

-- Câu 5
select survived,
sum(case
    when pclass = 1 then 1 else 0
    end) as first_class,
sum(case
    when pclass = 2 then 1 else 0
    end) as second_class,
sum(case
    when pclass = 3 then 1 else 0
    end) as third_class
from titanic
group by survived
