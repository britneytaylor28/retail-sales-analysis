
-- =========================================================
-- RETAIL SALES ANALYSIS
-- Portfolio: BritneyAnalyzes
-- Dataset: 30 fictional retail sales records
-- SQL dialect: SQLite
-- =========================================================

-- 1. DATASET OVERVIEW
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT order_id) AS unique_order_ids,
    COUNT(DISTINCT product) AS unique_products
FROM retail_sales;


-- 2. DATA QUALITY CHECKS
SELECT
    SUM(CASE WHEN order_id IS NULL OR TRIM(order_id) = ''
        THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN order_date IS NULL OR TRIM(order_date) = ''
        THEN 1 ELSE 0 END) AS missing_dates,
    SUM(CASE WHEN quantity IS NULL OR quantity <= 0
        THEN 1 ELSE 0 END) AS invalid_quantities,
    SUM(CASE WHEN unit_price IS NULL OR unit_price < 0
        THEN 1 ELSE 0 END) AS invalid_prices,
    SUM(CASE WHEN discount_rate IS NULL
        OR discount_rate < 0 OR discount_rate > 1
        THEN 1 ELSE 0 END) AS invalid_discounts
FROM retail_sales;


-- 3. OVERALL REVENUE AND ESTIMATED GROSS PROFIT
SELECT
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS total_revenue,
    ROUND(SUM(quantity *
        (unit_price * (1 - discount_rate) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales;


-- 4. REVENUE AND PROFIT BY CATEGORY
SELECT
    category,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue,
    ROUND(SUM(quantity *
        (unit_price * (1 - discount_rate) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;


-- 5. PRODUCT PERFORMANCE
SELECT
    product,
    category,
    SUM(quantity) AS units_sold,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue,
    ROUND(SUM(quantity *
        (unit_price * (1 - discount_rate) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales
GROUP BY product, category
ORDER BY revenue DESC;


-- 6. MONTHLY REVENUE TRENDS
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS monthly_revenue
FROM retail_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;


-- 7. REGIONAL AND SALES CHANNEL PERFORMANCE
SELECT
    region,
    sales_channel,
    COUNT(*) AS order_lines,
    SUM(quantity) AS units_sold,
    ROUND(SUM(quantity * unit_price * (1 - discount_rate)), 2)
        AS revenue,
    ROUND(SUM(quantity *
        (unit_price * (1 - discount_rate) - unit_cost)), 2)
        AS estimated_gross_profit
FROM retail_sales
GROUP BY region, sales_channel
ORDER BY revenue DESC;


-- 8. DUPLICATE ORDER ID CHECK
SELECT
    order_id,
    COUNT(*) AS occurrences
FROM retail_sales
GROUP BY order_id
HAVING COUNT(*) > 1;
