--En Çok Tekrar Edilen Ürünler (Reorder Analysis)
USE InstacartAnalytics;
GO
SELECT TOP 10
  product_id,
  COUNT(*) AS total_orders,
  SUM(reordered) AS reordered_count,
  CAST(SUM(reordered) * 1.0 / COUNT(*) AS DECIMAL(5,2)) AS reorder_rate
FROM dbo.order_products_prior
GROUP BY product_id
ORDER BY reorder_rate DESC;
