-- 헤비 유저가 등록한 공간의 정보
SELECT * FROM PLACES
-- 공간을 둘 이상 등록한 사람을 "헤비 유저"
WHERE HOST_ID IN (SELECT HOST_ID FROM PLACES
                GROUP BY HOST_ID
                HAVING COUNT(*)>=2)
-- 아이디 순으로 조회
ORDER BY ID;