--Sepetteki Ürün Pozisyonu (add_to_cart_order)
USE InstacartAnalytics;
GO
SELECT
  add_to_cart_order,
  AVG(CAST(reordered AS FLOAT)) AS reorder_rate
FROM dbo.order_products_prior
GROUP BY add_to_cart_order
ORDER BY add_to_cart_order;
