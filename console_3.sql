#a) Hoeveel verschillende brouwers zitten er in de database(118)
SELECT COUNT(Name) AS total_brewers
FROM brewers;

#b) Bereken de gemiddelde turnover van alle brouwers(114302.1525)
SELECT AVG(Turnover) average
FROM brewers;

#c) Geef het laagste, gemiddelde, en hoogste alcoholgehalte
# uit de beers tabel in 1 instructie
SELECT MIN(Alcohol) AS minimum,
       TRUNCATE(AVG(Alcohol),4) As average,
       MAX(Alcohol) AS maximum
FROM beers;

#d) Bereken de gemiddelde turnover van alle brouwers in de provincie brabant
# (postcodes die beginnen met 1) maar negeer de brouwerij Palm (39525.7143)
#1
SELECT AVG(Turnover) AS average_turnover
FROM brewers
WHERE ZipCode LIKE '1%'
AND Name NOT LIKE 'Palm';
#2
SELECT AVG(Turnover) AS average_turnover
FROM brewers
WHERE LEFT(ZipCode,1) = 1
AND Name != 'Palm';

# e) Bereken het gemiddelde alcohol per categorie(id). (39)
SELECT AVG(Alcohol) AS average
FROM beers
Group By CategoryId;

# f) Toon de hoogste bier prijs per categorie maar negeer alle bieren die
# niet in stock zijn. Sorteer het resultaat op categorieId. Zorg er ook voor dat
# we enkel prijzen zien die hoger zijn dan 3. (5)
SELECT MAX(Price) AS maximum_price
FROM beers
WHERE Stock <> 0
GROUP BY CategoryId
HAVING maximum_price > 3;

