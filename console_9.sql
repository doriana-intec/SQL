SELECT CURDATE(),
       CURTIME(),
       DAYOFMONTH(NOW());

SELECT YEAR(NOW()),
       MONTH(NOW()),
       DAY(NOW()),
       HOUR(NOW()),
       MINUTE(NOW()),
       SECOND(NOW());

SELECT DAYNAME(NOW()),
       MONTHNAME(NOW()),
       EXTRACT(YEAR FROM NOW());

USE sql_store;
SELECT *
FROM orders
WHERE order_date >= '2019-01-01';

SELECT *
FROM orders
WHERE YEAR(order_date) >= YEAR('2019-01-01');

SELECT DATE_FORMAT(NOW(),'%d %m %y');
SELECT DATE_FORMAT(NOW(),'%D %M %Y');

Select TIME_FORMAT(NOW(), '%H:%i %p');

SELECT DATE_ADD(NOW(),INTERVAL -1 DAY );
SELECT DATE_SUB(NOW(), INTERVAL 1 DAY);

SELECT DATEDIFF('2020-02-25','2020-02-20');

USE sql_invoicing;
DELETE
FROM invoices
WHERE invoice_id = 1;

SELECT *
FROM invoices;




