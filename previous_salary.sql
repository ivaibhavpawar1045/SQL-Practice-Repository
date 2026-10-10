Problem :-
             Wrute query to compare the previous month salary with the current salary

Platform :-
              SelfStudy

Difficulty :- 
               Mid


SELECT customer ,
     name ,
     salary
FROM DATA

     LAG() OVER(
          PARTITION BY salary
     ) AS Previous_sal

ORDER BY customer;