-- =====================================================
-- DELIVERY ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Average Delivery Time

SELECT
    ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM deliveries;

-- Delivery Status Distribution

SELECT
    delivery_status,
    COUNT(*) AS total_orders
FROM deliveries
GROUP BY delivery_status
ORDER BY total_orders DESC;

-- Return Reasons

SELECT
    return_reason,
    COUNT(*) AS total_returns
FROM deliveries
WHERE return_reason IS NOT NULL
GROUP BY return_reason
ORDER BY total_returns DESC;
