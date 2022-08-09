SELECT cashiers.cashier, cashiers.name, SUM(products.price) as amount
FROM sales
INNER JOIN products ON sales.product = products.product
INNER JOIN cashiers ON sales.cashier = cashiers.cashier
GROUP BY cashiers.cashier
HAVING SUM(products.price) < '$50000.00'
ORDER by amount ASC
;
