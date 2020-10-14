-- Table: Department

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | revenue       | int     |
-- | month         | varchar |
-- +---------------+---------+
-- (id, month) is the primary key of this table.
-- The table has information about the revenue of each department per month.
-- The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
 

-- Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

-- The query result format is in the following example:

-- Department table:
-- +------+---------+-------+
-- | id   | revenue | month |
-- +------+---------+-------+
-- | 1    | 8000    | Jan   |
-- | 2    | 9000    | Jan   |
-- | 3    | 10000   | Feb   |
-- | 1    | 7000    | Feb   |
-- | 1    | 6000    | Mar   |
-- +------+---------+-------+

-- Result table:
-- +------+-------------+-------------+-------------+-----+-------------+
-- | id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
-- +------+-------------+-------------+-------------+-----+-------------+
-- | 1    | 8000        | 7000        | 6000        | ... | null        |
-- | 2    | 9000        | null        | null        | ... | null        |
-- | 3    | null        | 10000       | null        | ... | null        |
-- +------+-------------+-------------+-------------+-----+-------------+

-- Answer --

SELECT id,
    sum(case when month = 'Jan' then Revenue end) as Jan_Revenue,
    sum(case when month = 'Feb' then Revenue end) as Feb_Revenue,
    sum(case when month = 'Mar' then Revenue end) as Mar_Revenue,
    sum(case when month = 'Apr' then Revenue end) as Apr_Revenue,
    sum(case when month = 'May' then Revenue end) as May_Revenue,
    sum(case when month = 'Jun' then Revenue end) as Jun_Revenue,
    sum(case when month = 'Jul' then Revenue end) as Jul_Revenue,
    sum(case when month = 'Aug' then Revenue end) as Aug_Revenue,
    sum(case when month = 'Sep' then Revenue end) as Sep_Revenue,
    sum(case when month = 'Oct' then Revenue end) as Oct_Revenue,
    sum(case when month = 'Nov' then Revenue end) as Nov_Revenue,
    sum(case when month = 'Dec' then Revenue end) as Dec_Revenue
FROM Department
GROUP BY id