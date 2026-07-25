Problem :-
               Write a solution to find the nth highest distinct salary from the Employee table.
               If there are less than n distinct salaries, return null.

Platform :-
               LeetCode
               
Difficulty :- 
               Medium



CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary < N
        DESC
        LIMIT 1 OFFSET 1
  );
END