SELECT *
FROM orders AS o
         INNER JOIN customers AS c
                    ON o.customer_id = c.customer_id;

SELECT o.order_id,
       first_name,
       last_name,
       c.customer_id
FROM orders AS o
JOIN customers AS c on o.customer_id = c.customer_id;

SELECT c.customer_id,
       c.first_name,
       o.customer_id
FROM customers AS c
LEFT JOIN orders o USING(customer_id);
# LEFT JOIN orders o on c.customer_id = o.customer_id;

SELECT c.customer_id,
       c.first_name,
       o.customer_id
FROM  orders AS o
RIGHT JOIN customers c USING(customer_id);
