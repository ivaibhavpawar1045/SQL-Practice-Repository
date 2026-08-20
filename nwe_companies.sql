Problem :-
              write a query to print the company_code, founder name, 
              total number of lead managers, total number of senior managers, total number of managers, 
              and total number of employees. Order your output by ascending company_code.
               
Platform :-
               HackerRank
               
Difficulty :- 
               Mid



SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code)    AS total_lead_managers,
    COUNT(DISTINCT sm.senior_manager_code)  AS total_senior_managers,
    COUNT(DISTINCT m.manager_code)           AS total_managers,
    COUNT(DISTINCT e.employee_code)          AS total_employees
FROM Company AS c
JOIN Lead_Manager AS lm
    ON c.company_code = lm.company_code
JOIN Senior_Manager AS sm
    ON lm.company_code = sm.company_code
JOIN Manager AS m
    ON sm.company_code = m.company_code
JOIN Employee AS e
    ON m.company_code = e.company_code
GROUP BY
    c.company_code,
    c.founder
ORDER BY
    c.company_code ASC;