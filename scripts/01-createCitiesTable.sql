\c bigcities

DROP TABLE IF EXISTS cities;

CREATE TABLE cities(
    id INTEGER,
    name VARCHAR(30),
    country VARCHAR(30),
    population INTEGER,
    area INTEGER,
    PRIMARY KEY(id)
);