Problem :-
             Join STUDENTS to GRADES by matching each student’s marks to the grade range. 
             Show NULL for names with grades below 8, then sort by grade descending, name, and marks.
Platform :-
              HackerRank

Difficulty :- 
               Mid


     
SELECT
    CASE
        WHEN G.GRADE < 8 THEN 'NULL'
        ELSE S.NAME
    END AS NAME,
    G.GRADE,
    S.MARKS
FROM STUDENTS S
JOIN GRADES G
    ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY
    G.GRADE DESC,
    NAME ASC,
    S.MARKS ASC;