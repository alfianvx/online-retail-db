-- Active: 1699279256275@@127.0.0.1@3306@retail_store
-- insert data into users table --
INSERT INTO users (username, email, password) VALUES
("budi", "budi@gmail.com", "budiganteng"),
("siti", "siti@gmail.com", "siti123"),
("joko", "joko@gmail.com", "jokonovember"),
("agus", "agus@gmail.com", "aguslahirdesember"),
("dewi", "dewi@gmail.com", "dewijungler"),
("andi", "andi@gmail.com", "andimanusiasuper"),
("eko", "eko@gmail.com", "ekoprogrammerzamannow"),
("yoga", "yoga@gmail.com", "yogayoi"),
("citra", "citra@gmail.com", "citrasukafrifair"),
("bowo", "bowo@gmail.com", "bowocukurukuk");


-- insert data into products table --
INSERT INTO products (product_name, product_category, product_price) VALUES
("Indofood Bumbu Rendang", "Bumbu", 6000),
("Lada Bubuk Ladaku", "Bumbu", 1000),
("Saori Saus Tiram", "Bumbu", 2500),
("Indofood Bumbu Nasi Goreng", "Bumbu", 5000),
("Chitato", "Snack", 5000),
("Good Time Choco", "Snack", 3000),
("Cheetos", "Snack", 3000),
("Le Minerale", "Minuman", 2000),
("Teh Pucuk Harum", "Minuman", 3000),
("Susu Bear Brand", "Minuman", 8000),
("Cimory Yogurt", "Minuman", 9000);


-- insert data into carts table --
INSERT INTO carts (user_id, product_id) VALUES
(1, 11),
(1, 5),
(7, 6),
(10, 7),
(7, 8),
(8, 8),
(10, 11),
(9, 3),
(10, 7),
(2, 8);


-- inser data into transactions table --
INSERT INTO transactions (transaction_code, payment_method, cart_id) VALUES
(1010, 'Cash', 1),
(2020, 'Cash', 2),
(3030, 'Dana', 3),
(4040, 'Dana', 4),
(5050, 'OVO', 5),
(6060, 'OVO', 6),
(6060, 'Dana', 7),
(6060, 'OVO', 8),
(6060, 'Tunai', 9),
(6060, 'Qris', 10);


-- inser data into orders table --
INSERT INTO orders (order_code, order_date, transaction_id) VALUES
(101, NOW(), 1),
(102, NOW(), 2),
(103, NOW(), 3),
(104, NOW(), 4),
(105, NOW(), 5),
(106, NOW(), 6),
(107, NOW(), 7),
(108, NOW(), 8),
(109, NOW(), 9),
(110, NOW(), 10);