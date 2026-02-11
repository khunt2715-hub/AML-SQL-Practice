-- Sample Data

-- Customers

INSERT INTO customers (customer_id, name, country_id)
VALUES
(1, 'John Doe', 101),
(2, 'Jane Smith', 102),
(3, 'Alice Johnson', 103),
(4, 'Bob Lee', 104),
(5, 'Maria Gonzalez', 105),
(6, 'Ahmed Khan', 106),
(7, 'Li Wei', 107),
(8, 'Fatima Ali', 102),
(9, 'Carlos Mendes', 105),
(10, 'Sara O\'Neill', 101);


-- Countries
INSERT INTO countries (country_id, country_name, risk_level)
VALUES
(101, 'USA', 'Low'),
(102, 'Nigeria', 'High'),
(103, 'UK', 'Low'),
(104, 'Russia', 'High'),
(105, 'Brazil', 'Medium'),
(106, 'Pakistan', 'High'),
(107, 'China', 'Medium');

-- Transactions

INSERT INTO transactions (transaction_id, customer_id, amount, transaction_date, transaction_type)
VALUES
-- Customer 1 - small transactions for structuring
(1001, 1, 200.00, '2026-02-01', 'Deposit'),
(1002, 1, 300.00, '2026-02-02', 'Deposit'),
(1003, 1, 250.00, '2026-02-02', 'Deposit'),
(1004, 1, 150.00, '2026-02-03', 'Deposit'),

-- Customer 2 - high-value spike
(1005, 2, 5000.00, '2026-02-05', 'Deposit'),
(1006, 2, 6000.00, '2026-02-06', 'Withdrawal'),

-- Customer 3 - high-risk country
(1007, 3, 1000.00, '2026-02-02', 'Deposit'),

-- Customer 4 - rapid transactions
(1008, 4, 400.00, '2026-02-07', 'Deposit'),
(1009, 4, 500.00, '2026-02-07', 'Withdrawal'),
(1010, 4, 600.00, '2026-02-07', 'Deposit'),

-- Customer 5 - normal activity
(1011, 5, 1500.00, '2026-02-03', 'Deposit'),

-- Customer 6 - high-risk country
(1012, 6, 700.00, '2026-02-08', 'Deposit'),

-- Customer 7 - medium-risk, normal activity
(1013, 7, 1200.00, '2026-02-01', 'Deposit'),

-- Customer 8 - structuring + high-risk
(1014, 8, 300.00, '2026-02-01', 'Deposit'),
(1015, 8, 400.00, '2026-02-02', 'Deposit'),
(1016, 8, 250.00, '2026-02-02', 'Deposit'),
(1017, 8, 100.00, '2026-02-03', 'Deposit'),

-- Customer 9 - medium activity
(1018, 9, 2000.00, '2026-02-04', 'Deposit'),

-- Customer 10 - low-risk, occasional deposit
(1019, 10, 800.00, '2026-02-02', 'Deposit');

