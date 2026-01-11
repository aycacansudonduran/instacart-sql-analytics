--Tekrar Sipariþ Davranýþý (Order Number Analizi)
SELECT
    CASE
        WHEN order_number = 1 THEN 'First Order'
        ELSE 'Repeat Order'
    END AS order_type,
    COUNT(*) AS order_count
FROM orders
GROUP BY
    CASE
        WHEN order_number = 1 THEN 'First Order'
        ELSE 'Repeat Order'
    END;
