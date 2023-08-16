-- 코드를 입력하세요
SELECT b.title, b.board_id, r.reply_id, r.writer_id, r.contents,
       DATE_FORMAT(r.created_date, '%Y-%m-%d') AS CREATED_DATE
FROM used_goods_board AS b JOIN used_goods_reply AS r
ON b.board_id = r.board_id
-- '2022-10월'인 리스트만 출력
WHERE DATE_FORMAT(b.created_date, '%Y-%m') = '2022-10' OR DATE_FORMAT(r.created_date, '%Y-%m') = '2022-10'
ORDER BY r.created_date ASC, b.title ASC;
