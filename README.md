# LeetCode SQL 50 

My complete solutions to the **[LeetCode SQL 50](https://leetcode.com/studyplan/top-sql-50/)** study plan — a curated set of 50 SQL interview questions covering everything from basic `SELECT` filtering to advanced window functions.

✅ **Status:** All 50/50 problems solved
🛠️ **Dialect:** MySQL

## Why this repo

Interviewers love testing SQL because it reveals how you think about data, not just whether you know syntax. This study plan pushed me through the core patterns that show up again and again in real interviews — joins, subqueries, aggregation, string/date handling, and window functions. This repo is both a personal record of that practice and a reference others can use to prepare.

## Repo structure

Every problem is a standalone `.sql` file at the root, named `<problem-number>. <Problem Title>.sql`, e.g. `1757. Recyclable and Low Fat Products.sql`. Each file contains the runnable MySQL query for that problem.

```
.
├── 176. Second Highest Salary.sql
├── 180. Consecutive Numbers.sql
├── 185. Department Top Three Salaries.sql
├── ...
├── 2356. Number of Unique Subjects Taught by Each Teacher.sql
└── README.md
```

## Problems solved (50/50)

| # | Problem |
|---|---|
| 176 | Second Highest Salary |
| 180 | Consecutive Numbers |
| 185 | Department Top Three Salaries |
| 196 | Delete Duplicate Emails |
| 197 | Rising Temperature |
| 550 | Game Play Analysis IV |
| 570 | Managers with at Least 5 Direct Reports |
| 577 | Employee Bonus |
| 584 | Find Customer Referee |
| 585 | Investments in 2016 |
| 595 | Big Countries |
| 596 | Classes With at Least 5 Students |
| 602 | Friend Requests II: Who Has the Most Friends |
| 610 | Triangle Judgement |
| 619 | Biggest Single Number |
| 620 | Not Boring Movies |
| 626 | Exchange Seats |
| 1045 | Customers Who Bought All Products |
| 1068 | Product Sales Analysis I |
| 1070 | Product Sales Analysis III |
| 1075 | Project Employees I |
| 1141 | User Activity for the Past 30 Days I |
| 1148 | Article Views I |
| 1164 | Product Price at a Given Date |
| 1174 | Immediate Food Delivery II |
| 1193 | Monthly Transactions I |
| 1204 | Last Person to Fit in the Bus |
| 1211 | Queries Quality and Percentage |
| 1251 | Average Selling Price |
| 1280 | Students and Examinations |
| 1321 | Restaurant Growth |
| 1327 | List the Products Ordered in a Period |
| 1341 | Movie Rating |
| 1378 | Replace Employee ID With The Unique Identifier |
| 1484 | Group Sold Products By The Date |
| 1517 | Find Users With Valid E-Mails |
| 1527 | Patients With a Condition |
| 1581 | Customer Who Visited but Did Not Make Any Transactions |
| 1633 | Percentage of Users Attended a Contest |
| 1661 | Average Time of Process per Machine |
| 1667 | Fix Names in a Table |
| 1683 | Invalid Tweets |
| 1729 | Find Followers Count |
| 1731 | The Number of Employees Which Report to Each Employee |
| 1757 | Recyclable and Low Fat Products |
| 1789 | Primary Department for Each Employee |
| 1907 | Count Salary Categories |
| 1934 | Confirmation Rate |
| 1978 | Employees Whose Manager Left the Company |
| 2356 | Number of Unique Subjects Taught by Each Teacher |

## Topics covered

| Category | Concepts practiced |
|---|---|
| Basic filtering & selection | `WHERE`, `DISTINCT`, `IS NULL`, pattern matching, `REGEXP` |
| Joins | `INNER JOIN`, `LEFT JOIN`, self joins, multi-table joins |
| Aggregation | `COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING` |
| Sorting & grouping | `ORDER BY`, multi-column sorts, ranking ties |
| Subqueries | Correlated & non-correlated subqueries, `EXISTS`, `IN` |
| Advanced joins/selects | `CASE WHEN`, pivoting data, conditional aggregation |
| Window functions | `RANK()`, `DENSE_RANK()`, `LAG()`/`LEAD()`, running/moving averages |
| String/date functions | `SUBSTRING`, `REGEXP`, date arithmetic, formatting |
| Data manipulation | `DELETE`, updates with joins |

## How to use this repo

- Each `.sql` file is self-contained — copy it straight into the LeetCode editor for the matching problem, or run it against your own MySQL instance with the schema from that problem.
- Try the problem yourself first, then compare with the solution here.
- File names match LeetCode's problem numbering, so use `Ctrl+F` / GitHub's file search to jump straight to a problem.

## Tech

- **SQL dialect:** MySQL (LeetCode's default runtime for these problems)
- No external dependencies — just copy a query into the LeetCode editor or your own MySQL instance

## Connect

If this helped you or you spot a better approach to any solution, feel free to open an issue or PR.

⭐ If you found this useful, consider starring the repo!
