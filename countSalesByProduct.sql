SELECT products.name, sales.product, COUNT(sales.product) AS productsCount
FROM sales
INNER JOIN products ON products.product = sales.product
GROUP BY products.name, sales.product ORDER BY productsCount DESC;
