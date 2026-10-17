USE invoice_db;
SHOW TABLES;
select count(*) as total_invoices from invoices;
select * from invoices where approved = 'No';
select vendors, sum(amount) as total_amount from invoices group by vendors;
select * from invoices where amount > 200000;
-- 1. How many high-value invoices are unapproved?
SELECT approved, COUNT(*) as count
FROM invoices
WHERE amount > 100000
GROUP BY approved;
-- 2. Which department has the most failures?
SELECT department, COUNT(*) as unapproved_count
FROM invoices
WHERE amount > 100000 AND approved = 'No'
GROUP BY department
ORDER BY unapproved_count DESC;
-- 3. Total money at risk
SELECT SUM(amount) as money_at_risk
FROM invoices
WHERE amount > 100000 AND approved = 'No';