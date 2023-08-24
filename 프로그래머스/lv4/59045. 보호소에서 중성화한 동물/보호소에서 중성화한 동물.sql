-- 아이디와 생물 종, 이름을 조회
SELECT ins.ANIMAL_ID, ins.ANIMAL_TYPE, ins.NAME
FROM ANIMAL_INS ins INNER JOIN ANIMAL_OUTS outs
ON ins.animal_id = outs.animal_id
-- 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물
WHERE ins.SEX_UPON_INTAKE != outs.SEX_UPON_OUTCOME
-- 아이디 순으로 조회
ORDER BY ins.ANIMAL_ID;