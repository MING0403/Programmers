-- 해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력
SELECT MONTH(start_date) AS MONTH, CAR_ID, COUNT(*) AS RECORDS
FROM car_rental_company_rental_history

-- 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차
WHERE CAR_ID IN (SELECT CAR_ID 
                  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                  WHERE DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN "2022-08" AND "2022-10"
                  GROUP BY CAR_ID
                  HAVING COUNT(*) >= 5)
    AND DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN "2022-08" AND "2022-10"
    
GROUP BY MONTH, CAR_ID

-- 특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외
HAVING COUNT(*) !=0
-- 월을 기준으로 오름차순 정렬하고, 월이 같다면 자동차 ID를 기준으로 내림차순 정렬
ORDER BY MONTH ASC, CAR_ID DESC




