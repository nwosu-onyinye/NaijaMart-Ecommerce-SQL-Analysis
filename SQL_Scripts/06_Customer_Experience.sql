-- =====================================================
-- CUSTOMER EXPERIENCE ANALYSIS
-- Project: NaijaMart E-Commerce SQL Analysis
-- Author: Nwosu Onyinyechi
-- =====================================================

-- Average Product Rating

SELECT
    ROUND(AVG(product_rating),2) AS avg_product_rating
FROM customer_reviews;

-- Average Delivery Rating

SELECT
    ROUND(AVG(delivery_rating),2) AS avg_delivery_rating
FROM customer_reviews;

-- Review Category Analysis

SELECT
    review_category,
    COUNT(*) AS total_reviews
FROM customer_reviews
GROUP BY review_category
ORDER BY total_reviews DESC;
