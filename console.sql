CREATE TABLE groceries
(
    id                  integer primary key auto_increment,
    product_name        varchar(255),
    product_description TEXT,
    quantity            integer,
    price               float
);

INSERT INTO groceries(product_name, product_description, quantity, price)
    VALUE ('fufu', 'dough made from plantain + water, an it\'s sweet', 9, 2.99);

INSERT INTO groceries(product_name, product_description, quantity, price)
VALUES ('cola', 'zero', 10, 1.5),
       ('fanta', 'zero', 2, 1.55),
       ('cookies', 'with chocolate chips', 15, .79),
       ('chilli popcorn', 'sweet & spicy', 2, 3),
       ('pancakes', 'made from banana', 6, 2.5);

SELECT *
FROM groceries;

SELECT product_name, price
FROM groceries;

SELECT product_name
FROM groceries
WHERE price > 1;

SELECT product_name
FROM groceries
WHERE price < 1;

SELECT price
FROM groceries
WHERE id = 5;

ALTER TABLE groceries
    add aisle integer;

UPDATE groceries
SET aisle = 2
WHERE product_name = 'fanta';

SELECT aisle
FROM groceries
WHERE product_name = 'fanta';

UPDATE groceries
SET aisle = 5
WHERE product_name LIKE '%a';

SELECT *
FROM groceries
WHERE product_name LIKE '%a';

SELECT DISTINCT product_name
FROM groceries;

SELECT *
FROM groceries
WHERE price BETWEEN 1.5 AND 2.5;

SELECT *
FROM groceries
WHERE price = 1.5
   OR price = 2.5;

SELECT product_name
FROM groceries
WHERE price IN(1.55,3);

SELECT *
FROM groceries
WHERE aisle IS NULL;

SELECT product_name,product_description
FROM groceries
ORDER BY product_name;

SELECT *
FROM groceries
LIMIT 3;

SELECT *
FROM groceries
LIMIT 3 OFFSET 2;




