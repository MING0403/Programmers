-- ID, 이름, 성별, 생년월일을 조회
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM member_profile
-- 생일이 3월, 여성, 전화번호가 NULL인 경우는 출력대상에서 제외
WHERE MONTH(date_of_birth) = 3 AND tlno IS NOT NULL AND gender='W'
-- 회원ID를 기준으로 오름차순
ORDER BY MEMBER_ID;