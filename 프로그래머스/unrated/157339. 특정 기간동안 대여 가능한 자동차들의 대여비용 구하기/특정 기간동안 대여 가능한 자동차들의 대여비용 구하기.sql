-- 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력
-- 일일 대여 금액에서 10% 할인율을 적용하고 30일을 곱하면 총 대여 금액
SELECT h.car_id, c.car_type, FLOOR(c.daily_fee*30*(1-discount_rate*0.01)) AS FEE

-- CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블과 CAR_RENTAL_COMPANY_DISCOUNT_PLAN 테이블
FROM CAR_RENTAL_COMPANY_CAR c LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY h
ON c.car_id = h.car_id
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
ON c.car_type = p.car_type

-- 자동차 종류가 '세단' 또는 'SUV' 
WHERE c.car_type IN ('세단', 'SUV') AND DURATION_TYPE = '30일 이상'
GROUP BY c.car_id
-- 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능
HAVING (MAX(END_DATE) < '2022-11-01' OR MAX(END_DATE) IS NULL)
-- 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
AND FEE BETWEEN 500000 AND 2000000

-- 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 자동차 종류를 기준으로 오름차순 정렬, 자동차 종류까지 같은 경우 자동차 ID를 기준으로 내림차순 정렬
ORDER BY FEE DESC, c.car_type, plan_id DESC;