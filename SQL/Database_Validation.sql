
-- Wealth Management Dashboard
-- SQL Database Validation
-- Educational portfolio project using synthetic data

-- 1. Create customer table
CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    account_id VARCHAR(20),
    account_status VARCHAR(20)
);

-- 2. Create holdings table
CREATE TABLE Holdings (
    holding_id INT PRIMARY KEY,
    account_id VARCHAR(20),
    investment_name VARCHAR(100),
    symbol VARCHAR(20),
    quantity DECIMAL(12,2),
    current_price DECIMAL(12,2)
);

-- 3. Create transactions table
CREATE TABLE Transactions (
    transaction_id VARCHAR(20) PRIMARY KEY,
    account_id VARCHAR(20),
    transaction_date DATE,
    transaction_type VARCHAR(30),
    description VARCHAR(200),
    amount DECIMAL(12,2),
    status VARCHAR(30)
);

-- 4. Insert synthetic customer data
INSERT INTO Customers VALUES
('CUST-1001', 'John Smith', 'qa.user@example.com',
 'WM-1001', 'Active');

-- 5. Insert synthetic holdings
INSERT INTO Holdings VALUES
(1, 'WM-1001', 'Acme Corporation', 'ACME', 500, 100),
(2, 'WM-1001', 'Global Industries', 'GLOB', 300, 150),
(3, 'WM-1001', 'US Treasury Bond Fund', 'USTB', 600, 50);

-- 6. Insert synthetic transactions
INSERT INTO Transactions VALUES
('TXN-1001', 'WM-1001', '2026-01-05', 'Deposit',
 'Initial Deposit', 10000, 'Completed'),
('TXN-1002', 'WM-1001', '2026-01-10', 'Buy',
 'ACME Shares', 5000, 'Completed'),
('TXN-1003', 'WM-1001', '2026-01-15', 'Buy',
 'GLOB Shares', 3000, 'Completed'),
('TXN-1004', 'WM-1001', '2026-01-20', 'Sell',
 'USTB Shares', 2000, 'Completed'),
('TXN-1005', 'WM-1001', '2026-01-25', 'Withdrawal',
 'Cash Withdrawal', 1000, 'Completed');

-- 7. Verify customer information
SELECT *
FROM Customers
WHERE account_id = 'WM-1001';

-- 8. Verify investment holdings
SELECT *
FROM Holdings
WHERE account_id = 'WM-1001';

-- 9. Calculate individual holding values
SELECT
    investment_name,
    symbol,
    quantity,
    current_price,
    quantity * current_price AS holding_value
FROM Holdings
WHERE account_id = 'WM-1001';

-- 10. Calculate total investment holdings
SELECT
    account_id,
    SUM(quantity * current_price) AS total_holdings
FROM Holdings
WHERE account_id = 'WM-1001'
GROUP BY account_id;

-- Expected total holdings: 125000

-- 11. Verify transaction history
SELECT *
FROM Transactions
WHERE account_id = 'WM-1001'
ORDER BY transaction_date;

-- 12. Verify Buy transactions
SELECT *
FROM Transactions
WHERE account_id = 'WM-1001'
AND transaction_type = 'Buy';

-- 13. Verify Sell transactions
SELECT *
FROM Transactions
WHERE account_id = 'WM-1001'
AND transaction_type = 'Sell';

-- 14. Verify completed transactions
SELECT *
FROM Transactions
WHERE account_id = 'WM-1001'
AND status = 'Completed';

-- 15. Check duplicate customer IDs
SELECT customer_id, COUNT(*)
FROM Customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Expected result: No duplicate customer IDs.

-- Note:
-- Cash balance of 12500 is a separate sample value.
-- Total account value = 125000 + 12500 = 137500.
-- These SQL tables are a standalone sample database design.
-- They are not connected to the HTML demo application.
