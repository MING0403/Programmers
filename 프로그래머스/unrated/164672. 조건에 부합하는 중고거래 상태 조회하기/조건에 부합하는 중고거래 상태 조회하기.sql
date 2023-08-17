SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
IF(status='SALE',"판매중",IF(status='DONE', "거래완료", "예약중")) AS STATUS
FROM used_goods_board
WHERE DATE_FORMAT(created_date, '%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC;