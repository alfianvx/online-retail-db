-- get product category have a many products --
SELECT
product_category,
COUNT(*) AS total_products
FROM products
GROUP BY product_category
ORDER BY total_products DESC
LIMIT 1;