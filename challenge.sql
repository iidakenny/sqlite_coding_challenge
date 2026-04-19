-- Tool: VS Code with SQLTools (SQLite driver)
-- Validation: Queries run directly against bais_sqlite_lab.db
-- Results verified by reviewing output in SQLTools results panel


-- TASK 1:

SELECT first_name || ' ' || last_name AS full_name, SUM(quantity * unit_price) AS total_spend
FROM order_items
JOIN orders ON order_items.order_id = orders.id
JOIN customers ON orders.customer_id = customers.id
GROUP BY full_name
ORDER BY total_spend DESC
LIMIT 5;


--TASK 2:
SELECT p.category, SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.category
ORDER BY revenue DESC;

--TASK 2 VARIANT:
SELECT p.category, SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.id
JOIN orders o ON oi.order_id = o.id
WHERE o.status = 'Delivered'
GROUP BY p.category
ORDER BY revenue DESC;

--TASK 3:
SELECT e.first_name, e.last_name, d.name AS department,
       e.salary,
       ROUND((SELECT AVG(salary) FROM employees
              WHERE department_id = e.department_id), 2) AS dept_avg
FROM employees e
JOIN departments d ON e.department_id = d.id
WHERE e.salary > (
    SELECT AVG(salary) FROM employees
    WHERE department_id = e.department_id
)
ORDER BY d.name, e.salary DESC;

--TASK 4:
SELECT city, SUM(CASE WHEN loyalty_level = 'Gold' THEN 1 ELSE 0 END) AS gold_customer_count
FROM customers
GROUP BY city
ORDER BY gold_customer_count DESC, city ASC;

--TASK 4 Extension:
SELECT city, SUM(CASE WHEN loyalty_level = 'Gold' THEN 1 ELSE 0 END) AS Gold, SUM(CASE WHEN loyalty_level = 'Silver' THEN 1 ELSE 0 END) AS Silver, SUM(CASE WHEN loyalty_level = 'Bronze' THEN 1 ELSE 0 END) AS Bronze
FROM customers
GROUP BY city
ORDER BY Gold DESC, city ASC;


