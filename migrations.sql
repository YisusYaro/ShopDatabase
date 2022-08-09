DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

DROP TABLE IF EXISTS cashiers;
CREATE TABLE cashiers (
	cashier SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

INSERT INTO cashiers (cashier, name) VALUES (default, 'Jesús Yahuitl');
INSERT INTO cashiers (cashier, name) VALUES (default, 'Alejandro Rodríguez');
INSERT INTO cashiers (cashier, name) VALUES (default, 'Claudia Barbiere');

SELECT * FROM cashiers;

DROP TABLE IF EXISTS cashRegisters;
CREATE TABLE cashRegisters (
	machine SERIAL PRIMARY KEY,
	floor INT NOT NULL
);

INSERT INTO cashRegisters (machine, floor) VALUES (default, 1);
INSERT INTO cashRegisters (machine, floor) VALUES (default, 2);
INSERT INTO cashRegisters (machine, floor) VALUES (default, 3);

SELECT * FROM cashRegisters;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
  price MONEY NOT NULL
);

INSERT INTO products (product, name, price) VALUES (default, 'Laptop', 24000);
INSERT INTO products (product, name, price) VALUES (default, 'Desktop', 5200);
INSERT INTO products (product, name, price) VALUES (default, 'Lamp', 1200);

SELECT * FROM products;

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	cashier INT NOT NULL,
  machine INT NOT NULL,
  product INT NOT NULL,
  CONSTRAINT foreignKeyCashier FOREIGN KEY(cashier) REFERENCES cashiers(cashier),
  CONSTRAINT foreignCashRegister FOREIGN KEY(machine) REFERENCES cashRegisters(machine),
  CONSTRAINT foreignKeyProduct FOREIGN KEY(product) REFERENCES products(product)
);

INSERT INTO sales (cashier, machine, product) VALUES (1, 1, 1);
INSERT INTO sales (cashier, machine, product) VALUES (2, 2, 2);
INSERT INTO sales (cashier, machine, product) VALUES (3, 3, 1);
INSERT INTO sales (cashier, machine, product) VALUES (1, 2, 2);
INSERT INTO sales (cashier, machine, product) VALUES (2, 3, 3);
INSERT INTO sales (cashier, machine, product) VALUES (3, 1, 1);
INSERT INTO sales (cashier, machine, product) VALUES (2, 1, 3);
INSERT INTO sales (cashier, machine, product) VALUES (3, 3, 1);
INSERT INTO sales (cashier, machine, product) VALUES (2, 1, 3);
INSERT INTO sales (cashier, machine, product) VALUES (1, 2, 3);
INSERT INTO sales (cashier, machine, product) VALUES (2, 3, 2);

SELECT * FROM sales;
