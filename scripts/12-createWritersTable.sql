\c bigcities

CREATE TABLE writers (
    city_id INTEGER,
    name VARCHAr(45),
    FOREIGN KEY(city_id) REFERENCES cities(id)

);