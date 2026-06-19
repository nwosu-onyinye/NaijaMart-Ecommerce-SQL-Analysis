-- =====================================================
-- PRODUCT ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Top 10 Products by Revenue

SELECT
    p.product_name,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
        ),
        2
    ) AS revenue
FROM products p
JOIN order_details od
    ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;

-- Revenue by Category

SELECT
    p.category,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
        ),
        2
    ) AS revenue
FROM products p
JOIN order_details od
    ON p.product_id = od.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- Most Profitable Products

SELECT
    product_name,
    profit_margin
FROM products
ORDER BY profit_margin DESC
LIMIT 10;
