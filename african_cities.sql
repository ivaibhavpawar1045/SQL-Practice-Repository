Problem :-
             Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Platform :-
              HackerRank

Difficulty :- 
               Mid



SELECT CITY.NAME
FROM CITY
INNER JOIN COUNTRY
    ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';