-- Problem 3: Identify transactions with high-risk countries
SELECT
    t.transaction_id,
    t.customer_id,
    c.country_name,
    c.risk_level,
    t.amount
FROM transactions t
JOIN customers cu ON t.customer_id = cu.customer_id
JOIN countries c ON cu.country_id = c.country_id
WHERE c.risk_level = 'High';
