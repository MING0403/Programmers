-- 동물의 ID와 이름
SELECT outs.ANIMAL_ID, outs.NAME FROM ANIMAL_OUTS outs LEFT JOIN ANIMAL_INS ins
ON outs.animal_id = ins.animal_id
-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없음
WHERE ins.datetime IS NULL
-- ID 순으로 조회
ORDER BY ANIMAL_ID;