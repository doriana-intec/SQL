CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers
(
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name  VARCHAR(50) NOT NULL,
    points      INTEGER     NOT NULL DEFAULT 0,
    email       VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS orders
(
    order_id    INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY fk_customer_id (customer_id)
        REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);
