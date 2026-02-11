-- Sample Data

-- Customers
INSERT INTO customers (customer_id, name, country_id)
VALUES (1, 'John Doe', 101),
       (2, 'Jane Smith', 102);

-- Countries
INSERT INTO countries (country_id, country_name, risk_level)
VALUES (101, 'USA', 'Low'),
       (102, 'Nigeria', 'High');

-- Transactions
INSERT INTO transactions (transaction_id, customer_id, amount, transaction_date, transaction_type)
VALUES (1001, 1, 500.00, '2026-01-01', 'Deposit'),
       (1002, 2, 2000.00, '2026-01-03', 'Withdrawal');
