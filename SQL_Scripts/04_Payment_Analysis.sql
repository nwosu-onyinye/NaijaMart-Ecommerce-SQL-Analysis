-- =====================================================
-- PAYMENT ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Most Popular Payment Methods

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- Revenue by Payment Method

SELECT
    o.payment_method,
    ROUND(
        SUM(
            (p.selling_price * od.quantity)
            - od.discount_amount
        ),
        2
    ) AS revenue
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p
    ON od.product_id = p.product_id
GROUP BY o.payment_method
ORDER BY revenue DESC;
