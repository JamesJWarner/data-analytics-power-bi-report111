-- Which product category generated the most profit for the "Wiltshire, UK" region in 2021?

SELECT category, full_region, SUM(sale_price - cost_price) AS total_profit
FROM forview
WHERE TO_DATE(order_date, 'YYYY-MM-DD')::date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY category, full_region
HAVING full_region = 'Wiltshire, UK'
ORDER BY total_profit DESC
LIMIT 1;