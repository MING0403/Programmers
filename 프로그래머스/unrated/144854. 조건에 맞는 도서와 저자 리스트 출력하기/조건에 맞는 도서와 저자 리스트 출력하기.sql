SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM book b LEFT JOIN author a ON b.author_id = a.author_id
WHERE category = '경제'
ORDER BY published_date;