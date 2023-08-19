-- 첨부파일 경로를 조회
SELECT CONCAT("/home/grep/src/",f.board_id,"/",f.file_id,f.file_name,f.file_ext) AS FILE_PATH
FROM used_goods_board AS b JOIN used_goods_file AS f
ON f.board_id = b.board_id
-- 조회수가 가장 높은 중고거래 게시물
WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
-- 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬
ORDER BY FILE_ID DESC;