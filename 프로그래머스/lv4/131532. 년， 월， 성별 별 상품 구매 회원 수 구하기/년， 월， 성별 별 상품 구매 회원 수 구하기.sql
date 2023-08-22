-- 년, 월, 성별 별로 상품을 구매한 회원수를 집계
SELECT YEAR(SALES_DATE) YEAR, MONTH(SALES_DATE) MONTH, GENDER, COUNT(DISTINCT i.user_id) USERS
FROM ONLINE_SALE s INNER JOIN USER_INFO i
ON s.user_id = i.user_id
-- 성별 정보가 없는 경우 결과에서 제외
WHERE i.gender IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
-- 년, 월, 성별을 기준으로 오름차순 정렬
ORDER BY 1,2,3;