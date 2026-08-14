Problem :-
             Write a solution for highest paid employees in each department.
               
Platform :-
               SelfStudy
               
Difficulty :- 
               Mid



SELECT *
FROM (
     SELECT Name , 
     Department ,
     Salary,
     RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS rnk
     FROM Employees
)
AS Temp
WHERE rnk = 1;