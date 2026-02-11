-- Problem 1: Detect structuring activity
SELECT
    customer_id,
    COUNT(transaction_id) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
WHERE amount < 1000   -- Threshold for "small" transactions
GROUP BY customer_id
HAVING COUNT(transaction_id) > 3;  -- Customers with more than 3 small transactions
