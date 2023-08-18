SELECT INGREDIENT_TYPE, SUM(total_order) AS TOTAL_ORDER
FROM first_half f 
LEFT JOIN icecream_info i ON f.flavor = i.flavor
-- 성분 타입별로
GROUP BY INGREDIENT_TYPE
-- 총주문량이 작은 순서대로
ORDER BY TOTAL_ORDER;