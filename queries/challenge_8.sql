-- A query that displays the first ten orders where the 
--total price is more than the price of the most expensive 
--product in the database.

-- The columns should be order_id and total_price only.

-- total_price should be displayed as an integer.

-- Results should be ordered by descending order_id

-- When calculating the order price, 
--ignore any discounts and use the warehouse-standard 
--price for the products only


with
order_prices as (
    SELECT order_id, round(sum(unit_price)) as total_price
    FROM order_details
    GROUP BY order_id ) 
select order_id , total_price 
from order_details
join order_prices using(order_id)
where total_price > 264
group by order_id , total_price
order by order_id desc 
limit 10; 

