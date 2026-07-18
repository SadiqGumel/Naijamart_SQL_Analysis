WITH revenue_summary AS (
    SELECT 
        p.category, 
        p.product_name, 
        SUM(oi.quantity * oi.unit_price) AS total_revenue
    FROM products p
    JOIN order_items oi ON p.product_id = oi.product_id
    JOIN orders o ON oi.order_id = o.order_id
    WHERE o.order_status != 'Cancelled'
    GROUP BY p.category, p.product_name
)
SELECT 
    category, 
    product_name, 
    total_revenue,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY total_revenue DESC) AS revenue_rank
FROM revenue_summary
ORDER BY category ASC, revenue_rank ASC;