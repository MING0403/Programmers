-- 고양이와 개가 각각 몇 마리인지 조회
SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM animal_ins
GROUP BY animal_type
-- 고양이를 개보다 먼저 조회
ORDER BY ANIMAL_TYPE