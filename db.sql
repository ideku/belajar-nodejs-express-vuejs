CREATE DATABASE pos_db;

CREATE TABLE product(
    product_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200),
    product_price DOUBLE
)ENGINE=INNODB;