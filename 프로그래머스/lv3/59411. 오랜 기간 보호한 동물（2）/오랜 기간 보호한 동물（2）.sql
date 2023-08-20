-- 입양을 간 동물 중 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회
SELECT outs.ANIMAL_ID, outs.NAME FROM ANIMAL_OUTS outs LEFT JOIN ANIMAL_INS ins
ON outs.animal_id = ins.animal_id

-- 보호 기간이 긴 순으로 조회(동물 두 마리)
ORDER BY DATEDIFF(outs.datetime, ins.datetime) DESC
LIMIT 2;