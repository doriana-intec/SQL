#SELF JOIN
Use sql_hr;
SELECT  e.employee_id,
       e.first_name,
       e.job_title,
       m.first_name
FROM employees AS e
INNER JOIN employees AS m on e.reports_to = m.employee_id;

#UNION
USE sql_store;

SELECT order_date,
       'Active' AS status
FROM orders
WHERE order_date >= '2020-01-01'
UNION
SELECT order_date,
       'Archived' AS status
FROM orders
WHERE order_date < '2020-01-01';


#schrijf een query die de id van de klant, de voornaam, de punten en het type
# teruggeeft.
# Merk op dat de kolom met het type niet bestaat in de customers tabel , dus
# we hebben de waarden in deze kolom berekend op basis van de
# punten die elke klant heeft. Als ze minder dan 2000 punten hebben, is hun
# type bronze, als ze tussen de 2000 en 3000 punten hebben, zijn ze silver
# en als ze meer dan 3000 punten hebben is hun type gold.
# Sorteer ook het resultaat op de voornaam

SELECT customer_id,
       first_name,
       points,
       'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT customer_id,
       first_name,
       points,
       'Silver' as type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id,
       first_name,
       points,
       'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;
