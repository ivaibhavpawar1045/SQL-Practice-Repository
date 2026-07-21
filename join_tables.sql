"""
Table: Person
+-------------+---------+          personId is the primary key (column with unique values) for this table.
                              +-- This table contains information about the ID of some persons and their first and last names.
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |   
| firstName   | varchar |
+-------------+---------+
 
Table: Address
+-------------+---------+          addressId is the primary key (column with unique values) for this table.
| Column Name | Type    |       +--  Each row of this table contains information about the city and state of one person with ID = PersonId
+-------------+---------+ 
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |
+-------------+---------+       Write a solution to report the first name, last name, city, and state of each person in the Person table.
                            +--  If the address of a personId is not present in the Address table, report null instead.
                            +-- Return the result table in any order.

   -- Platform: Leetcode

-- Difficulty: Easy                         
 """


select p.firstname , p.lastname , a.city , a.state
from Person P
left join Address A
on p.personId = A.personId
