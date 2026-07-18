SELECT p.product_name, p.category, p.unit_price 
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL
ORDER BY p.unit_price ASC;