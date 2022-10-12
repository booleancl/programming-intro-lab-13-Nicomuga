\c bigcities

SELECT writers.name AS writer, cities.name AS city 
FROM writers
JOIN cities ON city_id = cities.id;