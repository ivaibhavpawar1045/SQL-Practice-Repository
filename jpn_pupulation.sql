Problem :-
               Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Platform :-
               HackerRank

Difficulty :- 
               Easy


SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = "JPN"