SELECT cashiers.cashier, cashiers.name, SUM(products.price)
FROM sales
INNER JOIN products ON sales.product = products.product
INNER JOIN cashiers ON sales.cashier = cashiers.cashier
GROUP BY cashiers.cashier
;
