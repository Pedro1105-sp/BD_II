# AGRUPAMENTO OU GRUPO DE DADOS (GROUP BY) - > ORGANIZAR DADOS QUE SE REPETE
SELECT orderNumber, status FROM orders ORDER BY status ASC;   # ORDER BY ASC -> DO MAIS BARATO PARA O MAIS CARO

SELECT status FROM orders GROUP BY status;   # (GROUP BY) - > ORGANIZAR DADOS QUE SE REPETE

SELECT status, COUNT(status) FROM orders GROUP BY status;   # (GROUP BY) - > ORGANIZAR DADOS QUE SE REPETE

SELECT od.quantityOrdered, od.priceEach, o.status FROM orders o
INNER JOIN orderdetails od USING(orderNumber)
ORDER BY status ASC;

SELECT o.status, SUM(od.quantityOrdered * od.priceEach) AS 'TOTAL'
FROM orders o
INNER JOIN orderdetails od USING(orderNumber)
GROUP BY status;


SELECT productLine, MAX(buyPrice)
FROM products
GROUP BY productLine;

SELECT productLine, MIN(buyPrice)
FROM products
GROUP BY productLine;