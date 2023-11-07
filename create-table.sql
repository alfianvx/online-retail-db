USE retail_store;


-- create users table --
CREATE TABLE users (
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL DEFAULT '',
    email VARCHAR(100) NOT NULL DEFAULT '',
    password VARCHAR(50) NOT NULL DEFAULT ''
);


-- create products table --
CREATE TABLE products(
    product_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL DEFAULT '',
    product_category VARCHAR(100) NOT NULL DEFAULT '',
    product_price INT NOT NULL DEFAULT 0
)


-- create carts table --
CREATE TABLE carts(
    cart_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES retail_store.users (user_id),
    CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES retail_store.products (product_id)
);


-- create transactions table --
CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cart_id INT NOT NULL,
    transaction_code INT NOT NULL DEFAULT 0,
    payment_method VARCHAR(20) NOT NULL,
    CONSTRAINT cart_id FOREIGN KEY (cart_id) REFERENCES retail_store.carts (cart_id)
);


-- create orders table --
CREATE TABLE orders(
    order_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    transaction_id INT NOT NULL,
    order_code INT NOT NULL DEFAULT 0,
    order_date DATETIME,
    CONSTRAINT transaction_id FOREIGN KEY (transaction_id) REFERENCES retail_store.transactions (transaction_id)
);



-- show all tables --
SHOW TABLES;


-- show single table --
DESC users;
DESC products;
DESC carts;
DESC transactions;
DESC orders;