-- 자동차 ID 리스트를 출력(자동차 ID 리스트는 중복이 없어야 함)
SELECT DISTINCT(h.car_id)
FROM CAR_RENTAL_COMPANY_CAR c 
INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY h
ON c.car_id = h.car_id

-- 10월에 대여를 시작한 기록이 있는 자동차 종류가 '세단'인 자동차 
WHERE MONTH(start_date) = 10 AND car_type = '세단'

-- 자동차 ID를 기준으로 내림차순 정렬
ORDER BY car_id DESC;