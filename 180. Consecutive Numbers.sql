Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column starting from 1.
 

Find all numbers that appear at least three times consecutively.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.


ANSWER:


# Write your MySQL query statement below
SELECT DISTINCT #not taking duplicates
l1.num AS ConsecutiveNums#Display the number.
FROM Logs l1#first copy of logs
JOIN Logs l2#second copy
ON L1.id=l2.id-1#l2 must be the next row after l1.
JOIN Logs l3#third copy
ON l2.id=l3.id-1#l3 must be the next row after l2.
WHERE
l1.num=l2.num
AND l2.num=l3.num#All three numbers must be equal..such that everyone gets equal in all case
