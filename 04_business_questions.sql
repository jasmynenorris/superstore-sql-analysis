-- ==========================================================
-- Business Questions
-- Superstore SQL Analysis
-- ==========================================================

-- Business Question 1:
-- Which products are the most expensive?

SELECT
    item_name,
    category,
    price
FROM superstore
ORDER BY price DESC;


-- Business Question 2:
-- Which products have the highest customer ratings?

SELECT
    item_name,
    average_rating
FROM superstore
ORDER BY average_rating DESC;


-- Business Question 3:
-- Which product categories have the highest average prices?

SELECT
    category,
    ROUND(AVG(price), 2) AS average_price
FROM superstore
GROUP BY category
ORDER BY average_price DESC;


-- Business Question 4:
-- Which products are running low on inventory?

SELECT
    item_name,
    stock_quantity
FROM superstore
WHERE stock_quantity < 30
ORDER BY stock_quantity ASC;


-- Business Question 5:
-- What is the total inventory available for each product category?

SELECT
    category,
    SUM(stock_quantity) AS total_inventory
FROM superstore
GROUP BY category
ORDER BY total_inventory DESC;


-- Business Question 6:
-- Which products are both highly rated and premium priced?

SELECT
    item_name,
    category,
    price,
    average_rating
FROM superstore
WHERE average_rating >= 4.5
ORDER BY price DESC;
