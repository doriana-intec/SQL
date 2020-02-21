# INNER JOIN
# Voor de oefening wil ik dat je naar de order_items tabel kijkt.
# In deze tabel hebben we deze kolommen : order_id, product_id, quantity en
# unit_price.
# Ik wil dat je een query schrijft en deze tabel met de products tabel, dus voor
# elke order retourneert zowel de product id als de naam. Gevolgd door de
# hoeveelheid en de eenheidsprijs uit de order_items tabel, en zorg er
# overigens voor dat u een alias gebruikt om uw code te vereenvoudigen.
USE sql_store;

SELECT oi.product_id,
       p.name,
       oi.quantity,
       oi.unit_price
FROM order_items AS oi
         JOIN products p on oi.product_id = p.product_id;

# 2. MULTIPLE TABLES
# Neem een kijkje in de sql_invoicing database
# Hier hebben we deze tabel payments, en dit zijn betalingen die elke klant
# heeft gedaan naar een bepaalde factuur.
# Bekijk de gegevens en de kolommen die de payments tabel heeft.
# We kunnen deze tabel ook combineren met de payment_methods tabel, dus
# kijk maar eens naar de gegevens en de kolommen.
# Terug naar de payments tabel, ik wil dat je een query schrijft en je deze tabel
# voegt met de payment_methods tabel en de clients tabel.
# Maak een rapport dat meer details toont zoals de naam van de klant en de
# betalingsmethode...
USE sql_invoicing;

SELECT date,
       c.name,
       pm.name
FROM payments AS p
         JOIN payment_methods pm on p.payment_method = pm.payment_method_id
         JOIN clients c on p.client_id = c.client_id;
