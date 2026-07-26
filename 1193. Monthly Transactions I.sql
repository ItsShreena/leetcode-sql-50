Table: Transactions

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| country       | varchar |
| state         | enum    |
| amount        | int     |
| trans_date    | date    |
+---------------+---------+
id is the primary key of this table.
The table has information about incoming transactions.
The state column is an enum of type ["approved", "declined"].
 

Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Transactions table:
+------+---------+----------+--------+------------+
| id   | country | state    | amount | trans_date |
+------+---------+----------+--------+------------+
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |
+------+---------+----------+--------+------------+
Output: 
+----------+---------+-------------+----------------+--------------------+-----------------------+
| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
+----------+---------+-------------+----------------+--------------------+-----------------------+
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
+----------+---------+-------------+----------------+--------------------+-----------------------+


ANSWER:
# Write your MySQL query statement below
SELECT #choose a column to display
DATE_FORMAT(trans_date, '%Y-%m')AS month,#here it statses to extract only year and month from trans date..so we group by months instead of individuals
country,#display country
COUNT(*)AS trans_count,#count every transaction in the group 
SUM(state='approved' )AS approved_count,#if state approved and then taken all approved or declined and then we do sum
SUM(amount)AS trans_total_amount,#add all transaction amounts
SUM(CASE 
WHEN state='approved'THEN amount 
ELSE 0
END)#all approved amounts are added only
AS approved_total_amount#name this
FROM Transactions#read the data from transactions table 
GROUP BY 
DATE_FORMAT(trans_date,'%Y-%m'),
country;#Create one group for every combination of: Month,Country

THIS IS A MEDIUM LEVEL QUESTION OF SQL AND CAN CONFUSE YOU A LITTLE IN BEGINNING SO TRY TO UNDERSTAND THE QUESTION FIRST

