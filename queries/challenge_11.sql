-- A query that displays the percentage of orders that had *any* 
--discount applied.

-- The only column should be 'percentage_discounted'

-- The percentage should be rounded to 2 d.p.

select round(count(case when discount > 0 then 1 end ) * 100.0 / count(*),2) as percentage_discounted
from order_details ;