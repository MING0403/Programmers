-- 아이디와 이름을 조회
SELECT ANIMAL_ID, NAME FROM animal_ins
-- 이름에 'el'이 들어감, type은 dog
WHERE NAME LIKE '%el%' AND animal_type = 'dog'
-- 이름 순으로 조회
ORDER BY NAME;