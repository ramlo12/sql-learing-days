# Student Database – SQL Practice (`SQLQuery2.sql`)

## Overview
This file contains **SQL Server (T-SQL)** queries run against the **`student_db`** database, specifically the **`student`** table. It covers the core SQL operations: inserting, reading, updating and deleting data, altering the table structure, and using date functions.

## Structure of the `student` table
| Column | Meaning |
|---|---|
| `student_id` | Student identifier |
| `std_name` | Student name |
| `age` | Age |
| `gender` | Gender |
| `city` | City |
| `course` | Course |
| `grade` | Grade / score |
| `email` *(new)* | Email (added with ALTER TABLE) |
| `std_address` *(new)* | Address (added with ALTER TABLE) |

## What the file contains

| # | Section | Statements | Purpose |
|---|---|---|---|
| 1 | Inserting data | `USE`, `INSERT INTO` | Select the database and add student Abdi (ID 9) |
| 2 | Reading & calculating | `SELECT`, `COUNT`, `MIN`, `MAX`, `SUM`, `GROUP BY`, `HAVING` | Total students, lowest/highest/total grade, grouping by age |
| 3 | Updating | `UPDATE` | Change the age of student ID 2 to 34 |
| 4 | Deleting | `DELETE` | Remove students with ID 1, 2, 3, 4, 5, 7, 9 |
| 5 | Altering the table | `ALTER TABLE` (`ADD`, `ADD CONSTRAINT`, `ALTER COLUMN`) | Add `email` and `std_address`, enforce age ≥ 18, widen `city` to 77 characters |
| 6 | Dates | `GETDATE`, `DATEADD`, `DATEDIFF` | Current date, add 10 days, difference in days |

## Expected results (date functions)
- `DATEADD(day,10,'2026-01-01')` → **2026-01-11**
- `DATEDIFF(DAY,'2026-01-01','2026-01-10')` → **9**
- `DATEDIFF(DAY,'2026-01-01','2028-01-19')` → **748**

## Warnings and suggestions
1. **The DELETE statements** remove every student with those IDs; the table may end up empty. Always use `WHERE` and double-check before running.
2. **The UPDATE** (ID 2) runs before the DELETE of ID 2, so the change is lost.
3. `HAVING count(*)>=1` has no effect, because every group that appears has at least one row.
4. `SUM/MIN/MAX(grade)` ignore `NULL` values (such as Abdi's grade).
5. **Typos:** `cheak_std_age` → `check_std_age`, `curant_date` → `current_date`. They don't break anything, but correct names are better practice.
6. The `check(age>=18)` constraint will fail if existing rows already have an age under 18.

## How to use
1. Open **SQL Server Management Studio (SSMS)**.
2. Open `SQLQuery2.sql`.
3. Run it section by section (highlight a section → **Execute / F5**). Don't run the whole file at once because of the DELETE statements.

## Screenshots
See [`README_screenshots_EN.md`](README_screenshots_EN.md) for an explanation of each image, and the [`screenshots/`](screenshots/) folder.
