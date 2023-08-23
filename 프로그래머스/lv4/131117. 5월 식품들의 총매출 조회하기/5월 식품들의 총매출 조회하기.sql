-- 식품 ID, 식품 이름, 총매출을 조회
SELECT p.PRODUCT_ID, p.PRODUCT_NAME,
SUM(p.PRICE*o.AMOUNT) TOTAL_SALES
FROM FOOD_PRODUCT p JOIN FOOD_ORDER o
ON p.product_id = o.product_id
-- 생산일자가 2022년 5월
WHERE DATE_FORMAT(PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY p.PRODUCT_ID
-- 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬
ORDER BY TOTAL_SALES DESC, PRODUCT_ID;