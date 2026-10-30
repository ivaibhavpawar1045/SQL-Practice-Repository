Problem :-
               Query the difference between the maximum and minimum populations in CITY .

Platform :-
               SelfStudy

Difficulty :- 
               MId


SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_date >= '2025-01-01'
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 3
ORDER BY total_spent DESC;
