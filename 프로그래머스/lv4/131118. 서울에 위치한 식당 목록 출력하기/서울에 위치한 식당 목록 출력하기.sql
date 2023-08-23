-- 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회
SELECT i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS,
# -- 리뷰 평균점수는 소수점 세 번째 자리에서 반올림
ROUND(AVG(REVIEW_SCORE),2) AS SCORE
FROM REST_REVIEW r JOIN REST_INFO i
ON r.rest_id = i.rest_id
-- 서울에 위치한 식당들
WHERE ADDRESS LIKE '서울%'
GROUP BY i.REST_ID
-- 평균점수를 기준으로 내림차순 정렬해주시고, 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬
ORDER BY SCORE DESC, FAVORITES DESC;