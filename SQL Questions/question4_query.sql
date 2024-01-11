-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders 

CREATE VIEW q4 AS
SELECT store_type, SUM(sale_price) AS total_sales, count(*) AS total_orders, SUM(percentage_of_sales) AS percentage_of_sales 
FROM forview
GROUP BY store_type;
SELECT * FROM q4;