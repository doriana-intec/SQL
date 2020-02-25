# 3. OUTER JOIN
# Schrijf een query die dit resultaat oplevert.
# Dus we hebben hier 3 kolommen, product_id, naam, quantity die ik uit de
# order_items tabel heb geselecteerd.
# Dus hier moeten we de products tabel met order_items tabel samenvoegen,
# zodat we kunnen zien hoeveel keer elk product is besteld.
# Echter, als we een inner join doen, zullen we alleen de producten zien die zijn
# besteld, maar hier doe ik een outer join, dus ga je gang en schrijf een query
# om dit resultaat te produceren

SELECT p.product_id,
       p.name,
       o.quantity
FROM order_items AS o
LEFT OUTER JOIN products p USING (product_id)
GROUP BY p.product_id,p.name
ORDER BY product_id;

# first_name(customer), customer_id(orders), name(shipper)

SELECT o.customer_id,
       c.first_name,
       s.name
FROM customers AS c
LEFT JOIN orders AS o USING (customer_id)
LEFT JOIN shippers AS s USING (shipper_id);

