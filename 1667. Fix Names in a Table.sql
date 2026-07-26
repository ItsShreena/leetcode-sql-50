Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key (column with unique values) for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.

The result format is in the following example.

 

Example 1:

Input: 
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
Output: 
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+


ANSWER:


# Write your MySQL query statement below
SELECT #selecting data
user_id,#display this
CONCAT(#CONCAT() joins strings together.
    UPPER(LEFT(name,1)),#returns the first character
    #converts to uppercase
    LOWER(SUBSTRING(name,2))#here substring and that too 2 means start from 2nd word convert everything after that in lower
)AS name#naming it this
FROM Users#from this table
ORDER BY user_id;#order by this
1667. Fix Names in a Table
