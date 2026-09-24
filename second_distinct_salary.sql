Problem :-
               Write a query to find the second distinct salary

Platform :-
              SelfStudy

Difficulty :- 
               MId


SELECT MAX(Salary) AS Second_Highest_Salary
FROM CUSTOMERS
WHERE < (SELECT MAX(Salary) FROM CUSTOMERS) 