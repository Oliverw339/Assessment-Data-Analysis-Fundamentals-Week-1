-- A query that displays the name of the third most expensive 
--product(s) for each category.

-- The columns should be category_name, product_name.

-- Results should be sorted alphabetically by category.

select category_name , product_name from products
join categories using( category_id)
limit 8;

select max(category_id) from categories;