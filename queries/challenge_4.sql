-- A query that displays the category_name and total count of 
--products (num_products) for each category.

-- Results should be sorted  in descending order by count, with any ties sorted by descending order of category name.
select category_name , count(product_name) as num_products
from categories
join products using(category_id)
group by category_id
order by num_products desc , category_name desc;
