-- Problem 4: Detect rapid successive transactions
SELECT
    customer_id,
    COUNT(transaction_id) AS txn_count,
    MIN(transaction_date) AS first_txn,
    MAX(transaction_date) AS last_txn
FROM transactions
GROUP BY customer_id
HAVING DATEDIFF(MAX(transaction_date), MIN(transaction_date)) < 2
   AND COUNT(transaction_id) > 2;
