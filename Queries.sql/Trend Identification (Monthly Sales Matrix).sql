SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS order_month, 
    SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY order_month
ORDER BY order_month ASC;