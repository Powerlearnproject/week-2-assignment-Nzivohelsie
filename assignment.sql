USE expense_tracker;

-- Retrieving All Expenses:
SELECT * FROM expenses;

-- Specific Columns:
SELECT amount,date,category
FROM expenses;

-- Filtering by Date Range
SELECT * FROM expenses
WHERE date BETWEEN '2021-01-01' AND '2021-07-10';

-- Filtering by Category
SELECT *
FROM expenses
WHERE category = 'Transportation';

-- Filtering with Comparison Operators
SELECT *
FROM expenses
WHERE amount > 50;

--  Combining Filters (AND)
SELECT *
FROM expenses
WHERE amount > 50 AND category = 'Groceries';

-- Combining Filters (OR)
SELECT *
FROM expenses
WHERE category = 'Transportation' OR category = 'Groceries';

-- Filtering with NOT
SELECT *
FROM expenses
WHERE NOT category = 'Transportation';

-- Sorting by Amount
SELECT *
FROM expenses
ORDER BY amount DESC;

-- Sorting by Date and Category
SELECT *
FROM Expenses
ORDER BY date DESC, category;

-- Create a table
CREATE TABLE Income (
income_id INT ,
amount DECIMAL(10,2) ,
date DATE ,
source VARCHAR(50)
);

-- add new column
ALTER TABLE Income
ADD category VARCHAR(50);
 
-- delete a column
ALTER TABLE Income
DROP COLUMN source;
 
 -- delete a table
 DROP TABLE income;