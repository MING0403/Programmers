SELECT ice.FLAVOR FROM FIRST_HALF AS ice 
LEFT JOIN ICECREAM_INFO AS info 
ON ice.flavor = info.flavor
WHERE ice.total_order > 3000 AND info.ingredient_type = 'fruit_based'
ORDER BY TOTAL_ORDER DESC;


