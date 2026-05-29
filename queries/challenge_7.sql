-- A query that displays the number of orders that 
--involved 2 or more products
-- The column should be called count_of_multiple_orders


with mut_ord as (
SELECT order_id, COUNT(*) as mult
FROM order_details
GROUP BY order_id
HAVING COUNT(*) > 1 ) 
select sum(mult) as count_of_multiple_orders from mut_ord; 