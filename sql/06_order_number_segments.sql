-- Kullanýcýlarýn Sipariþ Sürekliliði (Order Number Segmentasyonu)
SELECT
    CASE
        WHEN order_number = 1 THEN '1 Sipariþ'
        WHEN order_number BETWEEN 2 AND 5 THEN '2–5 Sipariþ'
        WHEN order_number BETWEEN 6 AND 10 THEN '6–10 Sipariþ'
        ELSE '10+ Sipariþ'
    END AS order_segment,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY
    CASE
        WHEN order_number = 1 THEN '1 Sipariþ'
        WHEN order_number BETWEEN 2 AND 5 THEN '2–5 Sipariþ'
        WHEN order_number BETWEEN 6 AND 10 THEN '6–10 Sipariþ'
        ELSE '10+ Sipariþ'
    END
ORDER BY order_count DESC;
