Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.

Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players who logged in on the day immediately following their initial login, and divide it by the number of total players.

The result format is in the following example.

 

Example 1:

Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+
| fraction  |
+-----------+
| 0.33      |
+-----------+
Explanation: 
Only the player with id 1 logged back in after the first day he had logged in so the answer is 1/3 = 0.33

ANSWER:
# Write your MySQL query statement below
SELECT
ROUND(#round 2 decimal thats why used
    COUNT(DISTINCT a.player_id)#Count the number of different players who logged in exactly one day after their first login.
    /(SELECT COUNT(DISTINCT player_id)#This subquery counts the total number of unique players.
    FROM Activity),
    2#rounding off 2
)
AS fraction#naming it as fraction
FROM Activity a
JOIN(
    SELECT player_id,
    MIN(event_date)#MIN(event_date) gives the earliest login date.
    AS first_login
    FROM Activity
    GROUP BY player_id

)f#temporary table the alias f
ON a.player_id=f.player_id#Match each activity row with the corresponding player's first login date.
AND a.event_date=
DATE_ADD(f.first_login, INTERVAL 1 DAY);
#adds 1 day to the first login date
#so, 1 person logges in 3 players so 1/3 was done 
