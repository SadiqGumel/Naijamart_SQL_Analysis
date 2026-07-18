SELECT 
    c.full_name, 
    COUNT(DISTINCT o.order_id) AS num_orders, 
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC
LIMIT 10;