SELECT mcdp_cd AS '진료과코드', COUNT(*) AS '5월예약건수'
FROM appointment
-- 2022년 5월에 예약
WHERE DATE_FORMAT(apnt_ymd, '%Y-%m') = '2022-05'
-- 진료과코드 별로
GROUP BY MCDP_CD
-- 예약한 환자 수를 기준으로 오름차순 정렬하고, 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬
ORDER BY 2,1;