SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS,COALESCE(FREEZER_YN, 'N') AS FREEZER_YN
FROM food_warehouse
WHERE LEFT(ADDRESS,3) = '경기도'
ORDER BY WAREHOUSE_ID;