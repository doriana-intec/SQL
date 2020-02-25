SELECT order_id,
       IFNULL(shipper_id, 'Not assigned') AS shippers
FROM orders;

SELECT order_id,
       COALESCE(shipper_id, comments, 'Not Assigned') AS shippers
FROM orders;

SELECT CONCAT(first_name, SPACE(1), last_name) AS customer,
       IFNULL(phone, 'Unkown')                 AS phone
FROM customers;

SELECT order_id,
       order_date,
       IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') As status
From orders;

SELECT customer_id,
       first_name,
       points,
       CASE
           WHEN points < 2000 THEN 'Bronze'
           WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
           WHEN points >= 3000 THEN 'Gold'
END AS customer_type
FROM customers
ORDER BY first_name;


