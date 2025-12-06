CREATE database banking_db;
use banking_db;

#inserting customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    city VARCHAR(50),
    state VARCHAR(50),
    created_at DATE
);

#inserting Accounts table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(15,2),
    opened_at DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

#inserting Transaction Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    txn_date DATETIME,
    txn_type VARCHAR(20),
    amount DECIMAL(15,2),
    status VARCHAR(10),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

#creating Loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    loan_type VARCHAR(30),
    loan_amount DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    tenure_months INT,
    issued_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

#creating credit card table
CREATE TABLE credit_cards (
    card_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    card_type VARCHAR(20),
    credit_limit DECIMAL(15,2),
    issued_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


#inserting data into tables
#Customers
INSERT INTO customers (first_name, last_name, dob, gender, city, state, created_at) VALUES
('Ravi', 'Sharma', '1990-02-15', 'Male', 'Pune', 'Maharashtra', '2020-01-01'),
('Sneha', 'Patil', '1995-11-20', 'Female', 'Mumbai', 'Maharashtra', '2020-03-15'),
('Amit', 'Gupta', '1988-07-10', 'Male', 'Delhi', 'Delhi', '2019-08-10'),
('Priya', 'Nair', '1992-05-18', 'Female', 'Bengaluru', 'Karnataka', '2021-06-22'),
('Gaurav', 'Pawar', '2002-12-24', 'Male', 'Satara', 'Maharashtra', '2025-06-22'),
('Karan','Deshmukh','1991-03-12','Male','Nashik','Maharashtra','2022-02-10'),
('Meera','Joshi','1989-08-08','Female','Pune','Maharashtra','2021-11-05'),
('Arjun','Saxena','1994-01-22','Male','Noida','Uttar Pradesh','2023-01-12'),
('Pooja','Reddy','1996-02-18','Female','Hyderabad','Telangana','2022-12-30'),
('Vikas','Yadav','1990-06-02','Male','Lucknow','Uttar Pradesh','2023-04-17'),
('Shweta','Kulkarni','1992-09-24','Female','Mumbai','Maharashtra','2021-09-14'),
('Rohan','Mishra','1987-07-19','Male','Indore','Madhya Pradesh','2020-11-22'),
('Aisha','Khan','1995-12-30','Female','Bhopal','Madhya Pradesh','2021-04-18'),
('Dev','Arora','1993-10-11','Male','Chandigarh','Chandigarh','2022-07-19'),
('Simran','Bajaj','1997-11-29','Female','Amritsar','Punjab','2023-02-08'),
('Tarun','Mehta','1990-04-05','Male','Surat','Gujarat','2021-06-30'),
('Nisha','Jain','1994-03-27','Female','Jaipur','Rajasthan','2022-10-14'),
('Harsh','Verma','1988-02-20','Male','Kanpur','Uttar Pradesh','2020-12-20'),
('Tanvi','Shah','1993-09-01','Female','Ahmedabad','Gujarat','2022-05-25'),
('Sagar','Chauhan','1992-05-10','Male','Nagpur','Maharashtra','2023-03-10'),
('Kritika','Bhatt','1989-07-25','Female','Vadodara','Gujarat','2021-08-09'),
('Yusuf','Ansari','1995-01-17','Male','Patna','Bihar','2023-01-28'),
('Neha','Bhandari','1996-06-19','Female','Kolkata','West Bengal','2022-03-12'),
('Gaurav','Shetty','1991-12-09','Male','Mangaluru','Karnataka','2021-10-10'),
('Ananya','Mukherjee','1997-05-14','Female','Kolkata','West Bengal','2023-04-10');

#Accounts
INSERT INTO accounts (customer_id, account_type, balance, opened_at) VALUES
(1, 'Savings', 45000, '2020-01-10'),
(1, 'Current', 120000, '2021-03-12'),
(2, 'Savings', 85000, '2020-03-20'),
(3, 'Savings', 15000, '2019-08-20'),
(4, 'Savings', 95000, '2021-06-30'),
(5,'Savings',54000,'2022-03-01'),
(6,'Current',240000,'2021-12-10'),
(7,'Savings',12000,'2020-12-01'),
(8,'Savings',32000,'2021-04-20'),
(9,'Current',175000,'2022-08-11'),
(10,'Savings',88000,'2023-02-18'),
(11,'Savings',45000,'2021-07-07'),
(12,'Current',200000,'2022-11-11'),
(13,'Savings',30000,'2020-08-22'),
(14,'Savings',99000,'2022-06-03'),
(15,'Savings',47000,'2023-04-22'),
(16,'Current',150000,'2021-09-12'),
(17,'Savings',25500,'2023-02-19'),
(18,'Savings',72000,'2022-04-30'),
(19,'Savings',60500,'2021-05-06'),
(20,'Current',270000,'2023-03-25'),
(3,'Current',180000,'2022-02-14'),
(4,'Current',210000,'2022-07-19'),
(2,'Current',95000,'2023-04-01'),
(1,'Savings',78000,'2021-10-20');


#Transactions
INSERT INTO transactions (account_id, txn_date, txn_type, amount, status) VALUES
(1, '2024-10-10 10:30:00', 'Deposit', 10000, 'Success'),
(1, '2024-11-01 15:00:00', 'Withdrawal', 5000, 'Success'),
(2, '2024-10-12 09:45:00', 'Deposit', 50000, 'Success'),
(3, '2024-11-02 16:00:00', 'Withdrawal', 15000, 'Failed'),
(4, '2024-09-25 11:20:00', 'Deposit', 25000, 'Success'),
(1, '2024-12-01 09:15:00', 'Deposit', 15000, 'Success'),
(2, '2024-12-02 14:30:00', 'Withdrawal', 8000, 'Success'),
(3, '2024-12-03 18:10:00', 'UPI Payment', 1200, 'Success'),
(4, '2024-12-04 11:45:00', 'Deposit', 50000, 'Success'),
(5, '2024-12-05 10:20:00', 'Withdrawal', 2500, 'Failed'),
(6, '2024-12-06 16:55:00', 'Deposit', 35000, 'Success'),
(7, '2024-12-07 09:50:00', 'UPI Payment', 700, 'Success'),
(8, '2024-12-08 13:40:00', 'Withdrawal', 5000, 'Success'),
(9, '2024-12-09 17:18:00', 'Deposit', 22000, 'Success'),
(10, '2024-12-10 08:33:00', 'UPI Payment', 999, 'Success'),
(11, '2024-12-11 19:25:00', 'Deposit', 30000, 'Success'),
(12, '2024-12-12 15:45:00', 'Withdrawal', 11000, 'Failed'),
(13, '2024-12-12 15:55:00', 'Withdrawal', 7000, 'Success'),
(14, '2024-12-13 12:00:00', 'Deposit', 40000, 'Success'),
(15, '2024-12-14 18:35:00', 'UPI Payment', 450, 'Success'),
(16, '2024-12-15 20:05:00', 'Deposit', 55000, 'Success'),
(17, '2024-12-16 07:40:00', 'Withdrawal', 3000, 'Success'),
(18, '2024-12-17 16:20:00', 'Deposit', 28000, 'Success'),
(19, '2024-12-18 21:15:00', 'UPI Payment', 1250, 'Success'),
(20, '2024-12-19 09:00:00', 'Withdrawal', 20000, 'Success');



#Loans
INSERT INTO loans (customer_id, loan_type, loan_amount, interest_rate, tenure_months, issued_date) VALUES
(1, 'Home Loan', 3500000, 7.2, 240, '2021-01-05'),
(2, 'Personal Loan', 500000, 11.5, 60, '2022-08-10'),
(3, 'Car Loan', 800000, 9.0, 84, '2023-02-15'),
(5,'Car Loan',650000,9.5,84,'2023-01-20'),
(6,'Home Loan',4200000,7.1,240,'2022-12-15'),
(7,'Personal Loan',300000,12.5,48,'2021-06-10'),
(8,'Education Loan',450000,10.2,72,'2022-02-11'),
(9,'Business Loan',1200000,13.5,96,'2023-03-05'),
(10,'Car Loan',700000,9.0,84,'2023-04-20'),
(11,'Home Loan',3800000,7.3,240,'2021-01-18'),
(12,'Personal Loan',250000,11.8,60,'2022-06-22'),
(13,'Gold Loan',150000,9.8,24,'2021-10-10'),
(14,'Education Loan',600000,10.0,84,'2023-02-12'),
(15,'Personal Loan',350000,12.0,48,'2022-09-15'),
(16,'Home Loan',5000000,7.0,240,'2021-05-25'),
(17,'Car Loan',520000,8.9,72,'2023-01-05'),
(18,'Business Loan',1400000,13.1,96,'2022-03-13'),
(19,'Personal Loan',400000,11.7,60,'2021-11-29'),
(20,'Home Loan',4600000,7.2,240,'2023-04-17'),
(1,'Education Loan',200000,9.9,36,'2021-03-05'),
(2,'Car Loan',750000,8.7,84,'2022-07-14'),
(3,'Gold Loan',180000,10.5,24,'2021-08-18'),
(4,'Personal Loan',420000,12.2,60,'2023-01-29');


#Credit cards
INSERT INTO credit_cards (customer_id, card_type, credit_limit, issued_date) VALUES
(1, 'Gold', 200000, '2022-05-01'),
(2, 'Platinum', 300000, '2023-01-15'),
(4, 'Silver', 100000, '2022-11-10'),
(5,'Gold',180000,'2022-02-18'),
(6,'Platinum',350000,'2021-12-01'),
(7,'Silver',90000,'2020-11-22'),
(8,'Gold',220000,'2021-05-10'),
(9,'Platinum',400000,'2022-08-18'),
(10,'Gold',200000,'2023-01-12'),
(11,'Silver',85000,'2021-08-03'),
(12,'Platinum',380000,'2022-09-20'),
(13,'Gold',150000,'2020-10-11'),
(14,'Silver',95000,'2022-06-22'),
(15,'Gold',250000,'2023-04-11'),
(16,'Platinum',450000,'2021-07-29'),
(17,'Silver',80000,'2023-01-15'),
(18,'Gold',240000,'2022-03-01'),
(19,'Gold',160000,'2021-04-10'),
(20,'Platinum',500000,'2023-03-19'),
(1,'Platinum',300000,'2022-10-10'),
(2,'Gold',200000,'2023-02-22'),
(3,'Silver',120000,'2021-12-01'),
(4,'Gold',210000,'2022-11-30');

#Which city has the highest number of customers
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC
LIMIT 1;


#What is the average balance of Savings accounts vs Current accounts
SELECT account_type, AVG(balance) AS avg_balance
FROM accounts
GROUP BY account_type;


#Which customer performed the most transactions
SELECT c.customer_id, c.first_name, c.last_name, 
       COUNT(t.transaction_id) AS total_txn
FROM customers c
JOIN accounts a ON a.customer_id = c.customer_id
JOIN transactions t ON t.account_id = a.account_id
GROUP BY c.customer_id
ORDER BY total_txn DESC
LIMIT 1;

#Find the total money deposited vs withdrawn in the bank
SELECT 
  SUM(CASE WHEN txn_type = 'Deposit' THEN amount ELSE 0 END)   AS total_deposit,
  SUM(CASE WHEN txn_type = 'Withdrawal' THEN amount ELSE 0 END) AS total_withdrawal
FROM transactions;


# Branch that generates highest loan interest income
SELECT cu.city,
       SUM(l.loan_amount * l.interest_rate / 100.0) AS interest_income
FROM loans l
JOIN customers cu ON l.customer_id = cu.customer_id
GROUP BY cu.city
ORDER BY interest_income DESC
LIMIT 1;


#Percentage of customers with at least one loan
SELECT ROUND(
  COUNT(DISTINCT l.customer_id) * 100.0 / NULLIF((SELECT COUNT(*) FROM customers),0)
,2) AS pct_loan_customers
FROM loans l;


#Which age group performs the most transactions
SELECT
  CASE
    WHEN age BETWEEN 18 AND 25 THEN '18–25'
    WHEN age BETWEEN 26 AND 35 THEN '26–35'
    WHEN age BETWEEN 36 AND 50 THEN '36–50'
    ELSE '50+'
  END AS age_group,
  COUNT(t.transaction_id) AS total_transactions
FROM (
  SELECT c.customer_id,
         TIMESTAMPDIFF(YEAR, c.dob, CURDATE()) AS age
  FROM customers c
) AS cust_age
JOIN accounts a ON cust_age.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY age_group
ORDER BY total_transactions DESC;


#Customers who have both a loan and a credit card
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
JOIN credit_cards cc ON c.customer_id = cc.customer_id;


#Total outstanding loan amount
SELECT SUM(loan_amount) AS total_outstanding
FROM loans;







