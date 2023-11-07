-- get 3 product most order by customer --
SELECT
products.product_name as product_name,
COUNT(*) AS total_order
FROM carts
INNER JOIN products ON carts.product_id = products.product_id
GROUP BY product_name
ORDER BY total_order DESC
LIMIT 3;