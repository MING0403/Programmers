-- 맛을 조회
SELECT f.FLAVOR
FROM FIRST_HALF f JOIN JULY j
ON f.flavor = j.flavor
-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값
GROUP BY f.FLAVOR
ORDER BY SUM(f.total_order + j.total_order) DESC
-- 큰 순서대로 상위 3개
LIMIT 3;