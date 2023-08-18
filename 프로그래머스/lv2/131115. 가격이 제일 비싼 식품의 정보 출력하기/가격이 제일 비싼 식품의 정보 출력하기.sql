-- 식품 ID, 식품 이름, 식품 코드, 식품분류, 식품 가격을 조회
SELECT * FROM food_product
-- 가격이 제일 비싼 식품
ORDER BY price DESC
LIMIT 1;