Table: Products

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| new_price     | int     |
| change_date   | date    |
+---------------+---------+
(product_id, change_date) is the primary key (combination of columns with unique values) of this table.
Each row of this table indicates that the price of some product was changed to a new price at some date.
Initially, all products have price 10.

Write a solution to find the prices of all products on the date 2019-08-16.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
Output: 
+------------+-------+
| product_id | price |
+------------+-------+
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |
+------------+-------+

ANSWER:

# Write your MySQL query statement below
SELECT p.product_id,#Choose the columns to display.
COALESCE(t.new_price,10)AS price#COALESCE is used as replacement ig to use it to replace values..COALESCE(value, replacement)..If value is NULL, return replacement
#so If SQL couldnt find a price, use 10.
FROM#read data from
(
    SELECT DISTINCT product_id
    FROM Products
)p#This creates a temporary table.
LEFT JOIN#Why LEFT JOIN? Because we still want Product 3.Even if Product 3 has no matching price.
(
    SELECT product_id,new_price
    FROM Products#This will create another temporary table.
    WHERE(product_id,change_date)IN#it means give me product id and change date only rows which matches pairs returned below
    (SELECT
    product_id,
    MAX(change_date)
    FROM Products
    WHERE change_date<='2019-08-16'#Ignore future prices.
    GROUP BY
    product_id
    )
)t##This will create another temporary table.
ON p.product_id=t.product_id;#Join both tables.
