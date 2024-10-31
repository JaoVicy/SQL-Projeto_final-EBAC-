SELECT                   
p.product_id,
p.name,
SUM(oi.quantity) AS total_vendido
FROM 
order_item oi
JOIN
product p ON oi.product_id = p.product_id
GROUP BY 
    p.product_id, p.name
ORDER BY 
total_vendido DESC
LIMIT 1;
