-- 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회
SELECT USER_ID, NICKNAME, 
-- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
CONCAT(CITY, " ",STREET_ADDRESS1, " ", STREET_ADDRESS2) AS "전체주소",
-- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태
CONCAT(SUBSTRING(TLNO,1,3),"-",SUBSTRING(TLNO,4,4),"-",SUBSTRING(TLNO,8,4)) AS '전화번호'
FROM USED_GOODS_BOARD b JOIN USED_GOODS_USER u
ON b.writer_id = u.user_id
-- 중고 거래 게시물을 3건 이상 등록 
GROUP BY u.user_id
Having COUNT(*)>=3
-- 회원 ID를 기준으로 내림차순 정렬
ORDER BY USER_ID DESC;