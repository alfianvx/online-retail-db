-- get data 1 custmer buy 3 different products --
SELECT 
users.username AS customer,
products.product_name AS product
FROM carts
INNER JOIN users ON carts.user_id = users.user_id
INNER JOIN products ON carts.product_id = products.product_id
WHERE users.user_id = 10;
