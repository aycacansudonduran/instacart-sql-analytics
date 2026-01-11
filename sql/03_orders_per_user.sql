-- Kullanýcýlarýn Toplam Sipariþ Sayýsý Daðýlýmý
SELECT
    user_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY user_id
ORDER BY total_orders DESC;
