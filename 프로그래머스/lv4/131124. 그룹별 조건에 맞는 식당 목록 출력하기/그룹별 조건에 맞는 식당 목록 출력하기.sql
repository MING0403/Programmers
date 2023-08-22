-- 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력
SELECT m.MEMBER_NAME, r.REVIEW_TEXT, DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM REST_REVIEW r INNER JOIN MEMBER_PROFILE m
ON r.member_id = m.member_id
-- 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회
WHERE r.member_id = (SELECT member_id FROM rest_review
    GROUP BY member_id
    ORDER BY COUNT(review_id) DESC
    LIMIT 1)
-- 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬
ORDER BY REVIEW_DATE, REVIEW_TEXT;