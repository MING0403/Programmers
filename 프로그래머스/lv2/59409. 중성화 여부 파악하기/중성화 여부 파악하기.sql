-- 동물의 아이디와 이름, 중성화
SELECT ANIMAL_ID, NAME, 
-- 중성화('Neutered' 또는 'Spayed')가 되어있다면 'O', 아니라면 'X'라고 표시
IF(SEX_UPON_INTAKE REGEXP ('Neutered|Spayed'),'O','X') AS 중성화
FROM ANIMAL_INS
-- 아이디 순으로 조회
ORDER BY ANIMAL_ID;