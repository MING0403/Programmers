-- 장바구니의 아이디를 조회
SELECT CART_ID FROM CART_PRODUCTS
-- 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지
GROUP BY CART_ID
HAVING GROUP_CONCAT(name) LIKE '%Milk%' AND GROUP_CONCAT(name) LIKE '%Yogurt%'
-- 장바구니의 아이디 순
ORDER BY CART_ID;