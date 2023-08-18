--  09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회
SELECT HOUR(datetime) AS HOUR, COUNT(*) AS COUNT
FROM animal_outs
GROUP BY HOUR
HAVING HOUR>=9 AND HOUR<20
-- 시간대 순으로 정렬
ORDER BY HOUR;