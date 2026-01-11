--Sipariþler Arasý Gün Farký Daðýlýmý
SELECT
    days_since_prior_order,
    COUNT(order_id) AS order_count
FROM orders
WHERE days_since_prior_order IS NOT NULL
GROUP BY days_since_prior_order
ORDER BY days_since_prior_order;
