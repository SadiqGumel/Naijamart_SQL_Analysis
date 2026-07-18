SELECT category, ROUND(AVG(unit_price), 2) AS avg_price 
FROM products 
WHERE category IN ('Electronics', 'Home Appliances')
GROUP BY category 
ORDER BY avg_price DESC;