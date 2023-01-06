-- Your code here
-- Your code here
--1
INSERT INTO customers (name, phone)
VALUES ('Rachel', 1111111111);

--2
UPDATE customers
SET points = points + 1
WHERE name = 'Rachel';

INSERT INTO coffee_orders(customer_name)
VALUES('Rachel');

--3
INSERT INTO customers (name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friedns.show', 3333333333);

--4
UPDATE customers
SET points = points + 3
WHERE name = 'Phoebe';

INSERT INTO coffee_orders(customer_name)
VALUES('Phoebe'); --x3

--5
INSERT INTO coffee_orders(customer_name)
VALUES('Rachel'); --x4

INSERT INTO coffee_orders(customer_name)
VALUES('Monica'); --x4

UPDATE customers
SET points = points + 4
WHERE name = 'Rachel' OR name = 'Monica';

--6
SELECT points FROM customers
WHERE name = 'Monica';

--7
SELECT points FROM customers
WHERE name = 'Rachel';

UPDATE customers
SET points = points - 10
WHERE name = 'Rachel';

INSERT INTO coffee_orders(customer_name, is_redeemed)
VALUES('Rachel', 1);

--8
INSERT INTO customers (name, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

--9
UPDATE customers
SET points = points + 6
WHERE name = 'Ross';

INSERT INTO coffee_orders(customer_name)
VALUES('Ross'); --x6

--10
UPDATE customers
SET points = points + 3
WHERE name = 'Monica';

INSERT INTO coffee_orders(customer_name)
VALUES('Monica'); --x3

--11
SELECT points FROM customers
WHERE name = 'Phoebe';

UPDATE customers
SET points = points - 10
WHERE name = 'Phoebe';

INSERT INTO coffee_orders(customer_name, is_redeemed)
VALUES('Phoebe', 1);

--12
UPDATE customers
SET points = points - 2
WHERE name = 'Ross';

DELETE FROM coffee_orders
WHERE customer_name = 'Ross' ORDER BY id DESC LIMIT 2;

--13
UPDATE customers
SET points = points + 2
WHERE name = 'Joey';

INSERT INTO coffee_orders(customer_name)
VALUES('Joey'); --x2
