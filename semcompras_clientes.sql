SELECT 
    c.customer_id, 
    c.name, 
    COUNT(co.customer_order_id) AS total_orders
FROM 
    customer c -- Apelidando customer de c.
LEFT JOIN 
    customer_order co ON c.customer_id = co.customer_id
GROUP BY 
    c.customer_id, c.name
HAVING 
    COUNT(co.customer_order_id) = 0;
