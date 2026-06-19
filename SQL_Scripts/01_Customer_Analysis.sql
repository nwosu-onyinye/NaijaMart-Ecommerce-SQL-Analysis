-- =====================================================
-- CUSTOMER ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Customer Segment Distribution

SELECT
    customer_segment,
    COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment
ORDER BY total_customers DESC;

-- Customer Distribution by State

SELECT
    state,
    COUNT(*) AS total_customers
FROM customers
GROUP BY state
ORDER BY total_customers DESC;

-- Average Customer Age by Segment

SELECT
    customer_segment,
    ROUND(AVG(age),0) AS avg_age
FROM customers
GROUP BY customer_segment
ORDER BY avg_age DESC;
