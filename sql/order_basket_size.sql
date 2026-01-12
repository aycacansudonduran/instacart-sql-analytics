--Sipariþ Baþýna Ürün Sayýsý (Sepet Büyüklüðü)
USE InstacartAnalytics;
GO
SELECT
  COUNT(*) AS product_count,
  COUNT(DISTINCT order_id) AS order_count
FROM dbo.order_products_prior;
