Problem :-
             Write a solution for the ranking of customers based on there spending
               
Platform :-
               SelfStudy
               
Difficulty :- 
               Mid


SELECT C.Name ,
       SUM(O.Amount) AS Total_spending
FROM Customers C
JOIN Order O ON C.CustomerID = O.CustomerID
RANK() OVER(ORDER BY SUM(O.Amount) DESC)
GROUP BY C.Name;