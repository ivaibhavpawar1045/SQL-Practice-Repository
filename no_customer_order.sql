
Problem :-
              write a query to print the customer who dont order
Platform :-
               HackerRank
               
Difficulty :- 
               Mid


select C.name as Customers
from Customers C
left join Orders O
on C.id = O.customerId
where O.customerID is null