WITH base AS (
SELECT
HISTORY_ID
,CASE
    WHEN DATEDIFF(end_date,start_date)+1 < 7 THEN '노할인'
    WHEN DATEDIFF(end_date,start_date)+1 >= 7 AND DATEDIFF(end_date,start_date)+1 < 30 THEN '7일 이상'
    WHEN DATEDIFF(end_date,start_date)+1 >= 30 AND DATEDIFF(end_date,start_date)+1 < 90 THEN '30일 이상'
    WHEN DATEDIFF(end_date,start_date)+1 >= 90 THEN '90일 이상'
    END discount_flg
,DAILY_FEE*(DATEDIFF(end_date,start_date)+1) AS before_discount_total_fee

,car_type
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS t1
INNER JOIN CAR_RENTAL_COMPANY_CAR AS t2
-- 자동차 종류가 '트럭'인 자동차의 대여 기록
ON t1.car_id = t2.car_id AND car_type = '트럭'
)

-- 대여 금액(컬럼명: FEE)을 구하여 대여 기록 ID와 대여 금액 리스트를 출력
SELECT
HISTORY_ID
-- 대여 기록 ID가 5인 경우, 일일 대여 금액 32,000원에서 7% 할인율을 적용하고 30일을 곱하면 총 대여 금액은 892,800원
,ROUND(before_discount_total_fee*(100-IF(DISCOUNT_RATE IS NULL,0,DISCOUNT_RATE))*0.01) AS FEE
FROM base AS t1
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS t2
ON t1.car_type = t2.car_type AND t1.discount_flg =t2.duration_type
-- 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 대여 기록 ID를 기준으로 내림차순 정렬
ORDER BY 2 DESC,1 DESC
