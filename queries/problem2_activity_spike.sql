-- Problem 2: Detect sudden spikes in activity
SELECT
    t.customer_id,
    COUNT(t.transaction_id) AS current_count,
    SUM(t.amount) AS current_total
FROM transactions t
WHERE t.transaction_date BETWEEN '2026-02-01' AND '2026-02-10'
GROUP BY t.customer_id
HAVING current_total > 2 * (
    SELECT AVG(amount)
    FROM transactions
    WHERE customer_id = t.customer_id
);
