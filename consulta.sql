USE world;
SHOW Tables;
SHOW COLUMNS FROM city;
SELECT city.Name, city.population
FROM city, contry
where city.Name LIKE 'Sor%' AND city.CountryCode = country.Code;