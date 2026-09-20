Problem :-
               Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Platform :-
               HackerRank

Difficulty :- 
               MId

SELECT CEIL(
    AVG(Salary) - AVG(REPLACE(Salary, '0', ''))
)
FROM EMPLOYEES;