-- Gün içindeki saatlere göre sipariþ yoðunluðu analizi
SELECT order_hour_of_day, COUNT(*) AS order_count
FROM orders
GROUP BY order_hour_of_day
ORDER BY order_hour_of_day;
