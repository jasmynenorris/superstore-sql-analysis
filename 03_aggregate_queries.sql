-- ==========================================================
-- Aggregate SQL Queries
-- Superstore SQL Analysis
-- ==========================================================

-- Total value of all product prices

SELECT
    SUM(price) AS total_product_value
FROM superstore;


-- Average product price

SELECT
    AVG(price) AS average_price
FROM superstore;


-- Number of products in each category

SELECT
    category,
    COUNT(*) AS total_products
FROM superstore
GROUP BY category;


-- Average product price by category

SELECT
    category,
    AVG(price) AS average_price
FROM superstore
GROUP BY category
ORDER BY average_price DESC;


-- Total inventory by category

SELECT
    category,
    SUM(stock_quantity) AS total_inventory
FROM superstore
GROUP BY category
ORDER BY total_inventory DESC;


-- Highest priced product

SELECT
    MAX(price) AS highest_price
FROM superstore;


-- Lowest priced product

SELECT
    MIN(price) AS lowest_price
FROM superstore;
