Problem :-
              Write a solution to find all customers who never order anything.

Platform :-
               LeetCode
               
Difficulty :- 
               Easy


SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerID
WHERE customerID IS NULL