-- 아이디와 이름, 성별 및 중성화 여부를 조회
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM animal_ins
-- 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty
WHERE name IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
-- 아이디 순으로 조회
ORDER BY ANIMAL_ID;