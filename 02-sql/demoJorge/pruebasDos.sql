CREATE TABLE costumers
(
    costumer_id serial PRIMARY KEY,
    customer_name varchar(50),
    city varchar(50);
)

CREATE TABLE orders
(
    order_id serial PRIMARY KEY,
    customer_id integer REFERENCES customer(customer_id),
    order_date date,
    total_amount numeric(10,2);
)

INSERT INTO customers(customer_name, city)
VALUES('Santiago Morales', 'Lima');

INSERT INTO orders(customer_id, order_date,total_amount)
VALUES(1,'2023-04-03',3000)

SELECT c.customer_name, o.order_date, o.total_amount
FROM orders as o 
JOIN customers as c ON o.customer_id = c.costumer_id
ORDER BY o.total_amount DESC

SELECT *
FROM orders
WHERE customer_id IN 