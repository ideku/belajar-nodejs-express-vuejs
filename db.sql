CREATE DATABASE pos_db;

CREATE TABLE product(
    product_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200),
    product_price DOUBLE
)ENGINE=INNODB;

INSERT INTO product(product_name, product_price) VALUES
    ("produk 1", "100000"),
    ("produk 2", "200000"),
    ("produk 3", "300000");