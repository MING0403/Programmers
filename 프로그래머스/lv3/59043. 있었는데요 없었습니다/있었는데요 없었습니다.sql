-- 아이디와 이름을 조회
SELECT ins.ANIMAL_ID, ins.NAME
FROM ANIMAL_INS ins JOIN ANIMAL_OUTS outs
ON ins.animal_id = outs.animal_id
-- 보호 시작일보다 입양일이 더 빠른 동물
WHERE outs.datetime < ins.datetime
-- 보호 시작일이 빠른 순으로 조회
ORDER BY ins.datetime;