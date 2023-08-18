SELECT LEFT(product_code, 2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM product
GROUP BY category
ORDER BY category;