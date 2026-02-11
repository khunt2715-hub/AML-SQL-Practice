CREATE DATABASE AML_SQL_Practice;

USE AML_SQL_Practice;

-- Creating table structure 

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country_id INT
);

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    risk_level VARCHAR(20)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE,
    transaction_type VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

