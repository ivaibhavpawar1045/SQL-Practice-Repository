
Problem :-
               We define an employees total earnings to be their monthly salary  months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
               Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as space-separated integers.

Platform :-
              HackerRank

Difficulty :- 
               MId


SELECT 
    MAX(salary * months) AS max_total_earnings,
    COUNT(*) AS num_employees_with_max_earnings
FROM Employee
WHERE salary * months = (
    SELECT MAX(salary * months)
    FROM Employee
);