-- ==========================================================
-- Basic SQL Queries
-- Superstore SQL Analysis
-- ==========================================================

-- View all products

SELECT *
FROM superstore;


-- Display product names and prices

SELECT
    item_name,
    price
FROM superstore;


-- Display products ordered from highest to lowest price

SELECT
    item_name,
    price
FROM superstore
ORDER BY price DESC;


-- Display all Kitchen Supplies products

SELECT
    item_name,
    price
FROM superstore
WHERE category = 'Kitchen Supplies';


-- Display products with fewer than 30 units in stock

SELECT
    item_name,
    stock_quantity
FROM superstore
WHERE stock_quantity < 30
ORDER BY stock_quantity;
