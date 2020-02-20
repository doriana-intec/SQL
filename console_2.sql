SELECT COUNT(*)
FROM beers;

SELECT COUNT(Image)
FROM beers;

SELECT MAX(Alcohol) AS maximum_alcohol
FROM beers;

SELECT SUM(Alcohol * 1.1) AS total_sum
FROM beers;

SELECT MIN(Alcohol) AS minimum_alcohol
FROM beers;

SELECT AVG(Alcohol)  AS average,Name, BrewerId
FROM beers
Group By BrewerId;

SELECT LEFT(Name,1) AS first_letter,ROUND(AVG(Alcohol),2) AS average
FROM beers
GROUP BY first_letter;

SELECT ROUND(Price,2)
FROM beers;

SELECT MIN(Alcohol) AS minimum,
       BrewerId,
       MIN(Stock) AS stock_nr
FROM beers
GROUP BY BrewerId
HAVING stock_nr < 5;

SELECT BrewerId,
       AVG(Alcohol) AS average
FROM beers
GROUP BY BrewerId
HAVING count(*) > 10;

SELECT name,
       Turnover * 0.80 AS dollars,
       Turnover * 0.96 AS smth_else
FROM brewers;












