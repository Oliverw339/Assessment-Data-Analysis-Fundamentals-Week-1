-- A query that returns details on the difference in price between 
--individual orders (including discount) and the standard warehouse 
--price

-- Products have a standard price, but an additional percentage
-- discount may be applied to the product total

-- The columns should be order_id, expected_price, actual_price, 
--and price_difference

-- Only the top five rows (in descending order of price_difference) 
--should be displayed

-- All values should be rounded to 2 d.p. for display (but otherwise
-- kept at full precision)

select order_id, products.unit_price as expected_price , order_details.unit_price as actual_price ,
 order_details.discount as price_difference
 from order_details
 join products using (product_id);