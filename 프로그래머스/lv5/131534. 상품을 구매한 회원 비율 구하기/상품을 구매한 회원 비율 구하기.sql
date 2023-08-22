-- 년, 월, 상품을 구매한 회원수, 상품을 구매한 회원의 비율 출력
SELECT Year(s.sales_date) YEAR, MONTH(s.sales_date) MONTH, COUNT(DISTINCT i.user_id) AS PRODUCT_ID,
-- 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)
-- 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림
ROUND(COUNT(DISTINCT i.user_id) / (SELECT COUNT(*) FROM USER_INFO WHERE joined LIKE '2021%'),1) AS PUCHASED_RATIO

FROM USER_INFO i JOIN ONLINE_SALE s
ON i.user_id = s.user_id
WHERE i.joined LIKE '2021%'

GROUP BY YEAR, MONTH
-- 년을 기준으로 오름차순 정렬해주시고 년이 같다면 월을 기준으로 오름차순 정렬
ORDER BY YEAR, MONTH;