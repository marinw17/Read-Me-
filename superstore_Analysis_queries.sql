--Project #1: Superstore Analysis

--Ordering items by cost from Least to Greater.
select *
from superstore
order by price;

--Showing the average price of goods per category.
select category, avg(price)
from superstore
group by category;

--Showing the average price of items in the Kitchen Supply category
select category, avg (price)
from superstore
where category="Kitchen Supplies";

--how many Premium Coffee Makers are in stock?
select sum(stock_quantity)
from superstore
where item_name="Premium Coffee Maker";