SELECT cashiers.name as cashierName, products.name as productName, products.price, cashRegisters.floor
FROM sales
INNER JOIN products ON products.product = sales.product
INNER JOIN cashiers ON cashiers.cashier = sales.cashier
INNER JOIN cashRegisters ON cashRegisters.machine = sales.machine
;
