--Sipariþ Sýrasýna Göre Reorder Eðilimi
USE InstacartAnalytics;
GO
SELECT
  o.order_number,
  AVG(CAST(op.reordered AS FLOAT)) AS reorder_rate
FROM orders o
JOIN dbo.order_products_prior op
  ON o.order_id = op.order_id
GROUP BY o.order_number
ORDER BY o.order_number;
