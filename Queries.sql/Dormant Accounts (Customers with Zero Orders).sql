SELECT c.full_name, c.city, c.state, c.signup_date 
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id 
WHERE o.order_id IS NULL
ORDER BY c.signup_date ASC;