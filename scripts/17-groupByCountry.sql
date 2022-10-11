\c bigcities

SELECT
Country,
SUM(population) AS total_pop,
SUM(area) AS total_area
FROM cities
GROUP BY country 
ORDER BY total_pop DESC;