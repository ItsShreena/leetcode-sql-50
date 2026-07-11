Table: Seat

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student     | varchar |
+-------------+---------+
id is the primary key (unique value) column for this table.
Each row of this table indicates the name and the ID of a student.
The ID sequence always starts from 1 and increments continuously.
 

Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.

The result format is in the following example.

 

Example 1:

Input: 
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output: 
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
Explanation: 
Note that if the number of students is odd, there is no need to change the last one's seat.


ANSWER:
# Write your MySQL query statement below
SELECT #choosing to display
CASE #its the if-else version of SQL
WHEN id%2=1 AND  id!=(SELECT MAX(id)FROM Seat) #Here id%2=1 is when the number obtained is ODD and id!=...condition is used because we dont want to swap last i.e max one cause its the max and we dont have a partner for it to swap therefore id!=5
THEN id+1 #If it's an odd seat (except the last one)move it to the next seat
WHEN id%2=0 THEN id-1 #id%2=0 is when it is even the no. remainder then move the sseat backward
ELSE id#If none of the above conditions are true,keep the ID unchanged.
END AS id,#Finish the CASE statement.
studet #Display the students name.
FROM Seat #from seat table
ORDER BY id; 
#and then order in ascending order

#Number % 2

#= 0  → Even number
#= 1  → Odd number
