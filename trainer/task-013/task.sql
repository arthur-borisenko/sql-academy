SELECT DISTINCT name
FROM passenger
GROUP BY name
HAVING COUNT(*) > 1