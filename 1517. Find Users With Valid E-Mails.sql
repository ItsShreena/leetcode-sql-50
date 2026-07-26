Table: Users

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| name          | varchar |
| mail          | varchar |
+---------------+---------+
user_id is the primary key (column with unique values) for this table.
This table contains information of the users signed up in a website. Some e-mails are invalid.
 

Write a solution to find the users who have valid emails.

A valid e-mail has a prefix name and a domain where:

The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. The prefix name must start with a letter.
The domain must be exactly '@leetcode.com' in lowercase.
Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Users table:
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |
+---------+-----------+-------------------------+
Output: 
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
+---------+-----------+-------------------------+
Explanation: 
The mail of user 2 does not have a domain.
The mail of user 5 has the # sign which is not allowed.
The mail of user 6 does not have the leetcode domain.
The mail of user 7 starts with a period.


ANSWER:


# Write your MySQL query statement below
SELECT *#return all columns
FROM Users#from table 
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9._-]*@leetcode[.]com$'
AND mail LIKE BINARY '%@leetcode.com';#where is a filtering tool
#Instead of LIKE, we use REGEXP because the problem has many rules:
#First character must be a letter.
#Only certain characters are allowed.
#Must end with @leetcode.com.
#LIKE cannot easily express all these conditions.

#^ means start of the string
#[A-Za-z] means match one character from this set..so the first character must be a letter
#[A-Za-z0-9_.-]* this represent the remaining character before@
#\. used to escape the REGEXP..LITERALLY PUT A DOT(.)
#$ USED TO END THE STRING
#HERE REGEXP MEANS REGULAR EXPRESSION...A Regular Expression (Regex) is a sequence of characters that defines a search pattern. It is used to match, search, or validate text.
