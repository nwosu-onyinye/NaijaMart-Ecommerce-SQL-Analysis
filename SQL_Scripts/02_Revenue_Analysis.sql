-- =====================================================
-- REVENUE ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Revenue by Customer Segment

SELECT
    c.customer_segment,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
            - od.shipping_cost
        ),
        2
    ) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p
    ON od.product_id = p.product_id
GROUP BY c.customer_segment
ORDER BY total_revenue DESC;

-- Revenue by State

SELECT
    c.state,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
            - od.shipping_cost
        ),
        2
    ) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p
    ON od.product_id = p.product_id
GROUP BY c.state
ORDER BY total_revenue DESC;

-- Monthly Revenue Trend

SELECT
    DATE_FORMAT(o.order_date,'%Y-%m') AS month,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
            - od.shipping_cost
        ),
        2
    ) AS revenue
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p
    ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;
