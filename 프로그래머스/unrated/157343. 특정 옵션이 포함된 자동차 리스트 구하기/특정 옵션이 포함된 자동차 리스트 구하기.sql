SELECT * FROM car_rental_company_car AS c
WHERE c.options LIKE '%네비게이션%'
ORDER BY c.car_id DESC;