GROUP BY:

1. Ile państw znajduje się na każdym z kontynetnów:
ROZWIĄZANIE: SELECT
    Continent,
    COUNT(CODE) AS IlePanstw
FROM
    country
GROUP BY
    Continent
ORDER BY
    IlePanstw
DESC

2. Które języki (Oficjalne, urzędowe) są używane przez najwięcej państw erupejskich? 
ROZWIĄZANIE: SELECT LANGUAGE
    ,
    COUNT(CountryCode) AS IlePanstwUzywa
FROM
    countrylanguage,
    country
WHERE
    IsOfficial = "T" AND Continent = "Europe" AND country.Code = countrylanguage.CountryCode
GROUP BY LANGUAGE
ORDER BY
    IlePanstwUzywa
DESC

3. Podaj dla każdego państwa w Ameryce Południowej łączną liczbę obywateli, mieszkających w dużych miastach, o populacji wynoszącej co najmniej sto tysięcy mieszkańców?
ROZWIĄZANIE: SELECT
    country.Name,
    SUM(city.Population) AS IluObywateli
FROM
    city,
    country
WHERE
    continent = "South America" AND city.Population >= 100000 AND country.Code = City.CountryCode
GROUP BY
    country.Name
ORDER BY
    IluObywateli
DESC
    


