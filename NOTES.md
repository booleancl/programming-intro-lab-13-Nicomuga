# Repaso SQL

SQL es un lenguaje de programacion para bases de datos. Su traduccion seria Lenguaje Estructurado de Consultas (Structures Query Language)

el comando \dt describe una tabla en especifico o todas las tablas 

Csv (coma separated values) es un formato popular en ambitos de negocios. Se puede importar y exportar de Excel.

# Filtrado de informacion

La sentencia WHERE es para filtrar la informacion. Para gregar condiciones se puede utilizar las palabras AND u OR. AMbos tinen resultados distintos

Para agregarle condiciones. Antes del punto y coma se utiliza la palabra AND y se le agrega la condicion

Las palabras reservadas ORDER BY permiten ordenar los resultados de una consulta
```sql
SELECT <columm> 
FROM <table>
WHERE <columm > <sign> <condition>
AND/OR <country> <sign> <condition>

```
Ejemplo AND:
```sql
SELECT name, country, area
FROM cities
WHERE area < 1100
AND country = 'Japan';
```
Ejemplo OR
```sql
SELECT name, country, area
FROM cities
WHERE area < 1100
OR country = 'Japan';
```




Ejemplo:

```sql
SELECT name, country, area
FROM cities
ORDER BY area;
```

Por defecto, el ORDER BY nos muestra los resultados de forma ascendente, es decir de menor a mayor. Para pedirlo de forma descendente se utiliza la palabra reservada DESC al final de la frase.

Ejemplo ORDER BY

```sql
SELECT name, country, area
FROM cities
ORDER BY area DESC;
```


Ejemplo WHERE, AND, ORDER

```sql
SELECT name, country, area
FROM cities
WHERE area < 1100
OR country = 'Japan'
Order BY area;
```

# Campos o columnas Calculados

Se puden seleccionar variables compuestas en la misma frase de SELECT realizando una operacion algebraica y definiendo el resultado de la operacion con la palabra reservada AS y luego el nombre de la nueva columna. Las operaciones pueden ser simples o compuestas con parentesis

```sql 
SELECT name, country, population/area AS density
FROM cities
Order BY density ;
```

## Conteo de elementos con COUNT

```sql
SELECT COUNT(name) 
FROM cities
WHERE country = 'India';
```

## Limitar los resultados con LIMIT

```sql
SELECT name, country, population/area AS density
FROM cities
Order BY density DESC 
LIMIT 2;
```