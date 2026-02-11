-- Problem 5: Combine structuring and high-risk country alerts
SELECT
    s.customer_id,
    s.transaction_count,
    s.total_amount,
    h.risk_level
FROM
    (SELECT customer_id, COUNT(transaction_id) AS transaction_count, SUM(amount) AS total_amount
     FROM transactions
     WHERE amount < 1000
     GROUP BY customer_id
     HAVING COUNT(transaction_id) > 3) s
JOIN customers cu ON s.customer_id = cu.customer_id
JOIN countries h ON cu.country_id = h.country_id

