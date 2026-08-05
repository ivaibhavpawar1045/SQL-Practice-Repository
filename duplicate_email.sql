
Problem :-
              Write a solution to report all the duplicate emails. 
              Note that it guaranteed that the email field is not NULL.

Platform :-
               LeetCode
               
Difficulty :- 
               Easy

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1