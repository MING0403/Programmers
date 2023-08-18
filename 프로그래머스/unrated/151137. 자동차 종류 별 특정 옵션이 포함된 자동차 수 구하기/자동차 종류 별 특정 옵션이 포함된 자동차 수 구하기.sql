SELECT CAR_TYPE, COUNT(*) AS CARS FROM car_rental_company_car
WHERE REGEXP_LIKE(OPTIONS,'통풍시트|열선시트|가죽시트')
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE;