
-- Retail Sales Analysis
-- Dataset: fictional practice data in retail_sales.csv
-- SQL dialect: SQLite

-- 1. Check how many sales records we have
SELECT COUNT(*) AS total_records
FROM retail_sales;

-- 2. Check for duplicate order IDs
SELECT order_id, COUNT(*) AS occurrences
FROM retail_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 3. Calculate overall sales and estimated gross profit
SELECT
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS total_revenue,
    ROUND(SUM(quantity * ((unit_price * (1 - discount_rate)) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales;

-- 4. Compare revenue by product category
SELECT
    category,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue,
    ROUND(SUM(quantity * ((unit_price * (1 - discount_rate)) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;

-- 5. Find the highest-revenue products
SELECT
    product,
    SUM(quantity) AS units_sold,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue
FROM retail_sales
GROUP BY product
ORDER BY revenue DESC;

-- 6. Compare revenue by month
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS monthly_revenue
FROM retail_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;

-- 7. Compare regions and sales channels
SELECT
    region,
    sales_channel,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue
FROM retail_sales
GROUP BY region, sales_channel
ORDER BY revenue DESC;
