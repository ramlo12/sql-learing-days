# Screenshot Guide

Each image is a PNG showing one section of `SQLQuery2.sql`. Below is what each section does.

---

## 1. INSERT – Add a new student
![INSERT](screenshots/01_insert.png)

- `use student_db` → selects the `student_db` database.
- `INSERT INTO student (...) VALUES (...)` → adds a new row to the `student` table.
- The student added: **ID 9, Abdi, age 21, Male, Mogadishu, course SQL**, `grade` = `NULL` (no grade yet).

---

## 2. SELECT & Aggregate Functions
![SELECT](screenshots/02_select_aggregate.png)

| Query | Explanation |
|---|---|
| `count(*)` | Total number of students |
| `select * from student` | Shows all data in the table |
| `min(grade)` | Lowest grade |
| `max(grade)` | Highest grade |
| `sum(grade)` | Sum of all grades |
| `group by age` + `having` | Groups students by age and counts each group |

---

## 3. UPDATE – Modify data
![UPDATE](screenshots/03_update.png)

- Changes the age of student **ID 2** to **34**.
- `WHERE` is essential: without it, every student's age would change.

---

## 4. DELETE – Remove data
![DELETE](screenshots/04_delete.png)

- Seven `DELETE` statements, each removing one student (IDs 5, 2, 1, 3, 9, 7, 4).
- ⚠️ Deletion is permanent; use with care.

---

## 5. ALTER TABLE – Change the table structure
![ALTER TABLE](screenshots/05_alter_table.png)

1. `add email varchar(55), std_address varchar(40)` → adds two new columns.
2. `add constraint cheak_std_age check(age>=18)` → rule: age cannot be under 18.
3. `alter column city varchar(77)` → widens the `city` column to 77 characters.

---

## 6. Date Functions
![Date Functions](screenshots/06_date_functions.png)

| Query | Result |
|---|---|
| `GETDATE()` | Current date and time |
| `DATEADD(day,10,'2026-01-01')` | 2026-01-11 |
| `DATEDIFF(DAY,'2026-01-01','2026-01-10')` | 9 days |
| `DATEDIFF(DAY,'2026-01-01','2028-01-19')` | 748 days |

---

⬅️ Back to the [main README](README_EN.md)
