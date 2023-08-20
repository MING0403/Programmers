-- 이름과 보호 시작일을 조회
SELECT ins.NAME, ins.DATETIME
FROM ANIMAL_INS ins LEFT JOIN ANIMAL_OUTS outs
ON ins.animal_id = outs.animal_id
-- 아직 입양을 못 간 동물
WHERE outs.datetime IS NULL
-- 보호 시작일 순으로 조회
ORDER BY DATETIME
-- 가장 오래 보호소에 있었던 동물 3마리
LIMIT 3;