-- 회원 ID, 닉네임, 총거래금액을 조회
SELECT u.USER_ID, NICKNAME, SUM(price) AS TOTAL_SALES FROM used_goods_board b JOIN used_goods_user u
ON b.writer_id = u.user_id

-- 완료된 중고 거래의 총금액이 70만 원 이상
WHERE status = 'Done'
GROUP BY b.writer_id
HAVING TOTAL_SALES >=700000

-- 총거래금액을 기준으로 오름차순 정렬
ORDER BY TOTAL_SALES;