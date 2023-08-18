SELECT PRODUCT_CODE, SUM(sales_amount*price) AS SALES
FROM product p RIGHT JOIN offline_sale s 
ON p.product_id = s.product_id
GROUP BY PRODUCT_CODE
ORDER BY 2 DESC, 1;