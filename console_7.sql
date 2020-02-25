# returns all the products with a price higher than 3.35
USE sql_store;

SELECT *
FROM products
WHERE unit_price > (
    SELECT unit_price
    FROM products
    WHERE product_id = 3
);
#Subquery SELECT statement
USE sql_invoicing;

SELECT invoice_id,
       invoice_total,
       (SELECT TRUNCATE(AVG(invoice_total), 2)
        FROM invoices)                              AS invoice_average,
       TRUNCATE(invoice_total - (SELECT AVG(invoice_total)
                                 FROM invoices), 2) AS difference
FROM invoices;

# FROM clause
USE sql_invoicing;

SELECT *
FROM (
         SELECT client_id,
                name,
                (SELECT SUM(invoice_total)
                 FROM invoices
                 WHERE client_id = c.client_id) AS total_sales
         FROM clients As c
     ) AS sales_summary
WHERE total_sales IS NOT NULL;










