SELECT cashRegisters.floor, SUM(products.price)
FROM sales
INNER JOIN cashRegisters ON sales.machine = cashRegisters.machine
RIGHT JOIN products ON sales.product = products.product
GROUP BY cashRegisters.floor
;
