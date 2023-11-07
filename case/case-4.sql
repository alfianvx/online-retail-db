SELECT
  users.username AS customer,
  AVG(products.product_price) AS average_transaction
FROM orders
JOIN transactions ON orders.transaction_id = transactions.transaction_id
JOIN carts ON transactions.cart_id = carts.cart_id
JOIN users ON carts.user_id = users.user_id
JOIN products ON carts.product_id = products.product_id
WHERE orders.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY customer;
