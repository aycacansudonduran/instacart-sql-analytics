SELECT order_dow, COUNT(*) AS order_count
FROM orders
GROUP BY order_dow
ORDER BY order_count DESC;
