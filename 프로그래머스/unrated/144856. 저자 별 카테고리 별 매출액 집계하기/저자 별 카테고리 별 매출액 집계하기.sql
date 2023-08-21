-- 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력
SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY,
-- 매출액(TOTAL_SALES = 판매량 * 판매가)
SUM(s.sales*b.price) AS TOTAL_SALES 
FROM BOOK b JOIN AUTHOR a ON b.author_id = a.author_id
JOIN BOOK_SALES s ON b.book_id = s.book_id

-- 2022년 1월의 도서 판매 데이터를 기준
WHERE DATE_FORMAT(s.sales_date, '%Y-%m') = '2022-01'

-- 저자 별, 카테고리 별 
GROUP BY a.author_id, b.category

-- 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬
ORDER BY author_id, category DESC;