-- How many staff are there in all of the UK stores? 

SELECT country, SUM(staff_numbers) AS total_staff_numbers
FROM dim_store
GROUP BY country
HAVING country = 'UK'