/*
Table: Activity
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
Write an SQL query to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
The query result format is in the following example.

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
*/

/* Solution 1*/

WITH cte AS(
    SELECT *,
        MIN(event_date) OVER(PARTITION BY player_id) AS start_date
    FROM Activity
)
SELECT ROUND(SUM(IF(DATEDIFF(event_date,start_date)=1,1,0))/COUNT(DISTINCT player_id),2) AS fraction
FROM cte

/* Solution 2 Using Datediff, left join */

SELECT ROUND(COUNT(t2.player_id)/COUNT(DISTINCT t1.player_id),2) AS fraction
FROM Activity t1 LEFT JOIN (
  SELECT player_id, MIN(event_date) AS first_date
  FROM Activity 
  GROUP BY player_id
) AS t2 ON t1.player_id=t2.player_id AND DATEDIFF(t1.event_date,t2.first_date)=1AND t1.first_login=t2.event_date-1
