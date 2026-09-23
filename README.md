# Student DB — SQL Queries README

## Guud ahaan
Faylkan `SQLQuery1.sql` waa dars/tababar SQL ah oo isticmaala database la yiraahdo
**`student_db`** iyo table la yiraahdo **`student`**. Waxaa lagu barayaa xeryaha
ugu muhiimsan ee SQL — `SELECT`, `WHERE`, `ORDER BY`, `LIKE`, `IN`, `BETWEEN`,
`NULL`, iyo `TOP`.

## Table: `student`

| Column      | Nooca (Data Type) | Sharaxaad                     |
|-------------|--------------------|--------------------------------|
| student_id  | INT (Primary Key) | Aqoonsiga gaarka ah ee ardayga |
| std_name    | VARCHAR(50)        | Magaca ardayga                 |
| age         | INT                | Da'da ardayga                  |
| gender      | VARCHAR(10)        | Jinsiga (Male/Female)          |
| city        | VARCHAR(50)        | Magaalada uu ku nool yahay     |
| course      | VARCHAR(50)        | Koorsada uu qaatay (SQL/Python/Excel) |
| grade       | DECIMAL(5,2)       | Buundada/darajada uu heley (waxa jira `NULL` haddii aan weli la qorin) |

Table-ka wuxuu ka kooban yahay **9 arday** (student_id 1–9), mid ka mid ah
(Abdi, ID 9) grade-kiisu waa `NULL` si loo tijaabiyo `IS NULL` / `IS NOT NULL`.

## Qaybaha faylka (Query Categories)

1. **Database & Table setup** — `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO`
2. **Basic SELECT** — soo saarista dhammaan ama qaar ka mid ah columns-ka
3. **DISTINCT** — soo saarista qiimayaal kala duwan (courses, cities)
4. **Column Aliasing (`AS`)** — u bixinta magacyo cusub oo columns ah
5. **Calculated Columns** — xisaab ku dhex jirta SELECT (`grade + 5`)
6. **WHERE / Filtering** — `=`, `>`, `>=`, `<>`, `AND`, `OR`, `NOT`
7. **IN / NOT IN** — filtering liis qiimayaal ah
8. **BETWEEN** — filtering xad u dhexeeya laba qiime
9. **LIKE (Pattern Matching)** — `A%`, `%a`, `%an%`, `A_`
10. **NULL Handling** — `IS NULL`, `IS NOT NULL`
11. **ORDER BY** — kala sooca natiijada (ASC/DESC, column badan)
12. **TOP** — xaddidaadda tirada natiijada (SQL Server syntax)

## Sida loo isticmaalo
1. Fur SQL Server Management Studio (SSMS) ama tool kale oo T-SQL taageera.
2. Fur faylka `SQLQuery1.sql`.
3. Orod (`Execute` / F5) qaybta `CREATE DATABASE` iyo `CREATE TABLE` marka
   hore, si database-ka loo dhiso.
4. Kadibna orod query-yada kale hal-hal, si aad u aragto natiijo kasta.

> **Fiiro gaar ah:** Query-yada `TOP N` waa syntax gaar u ah **SQL Server**.
> Haddii aad isticmaasho database kale (sida MySQL ama SQLite/PostgreSQL),
> waxaad isticmaali doontaa `LIMIT N` halkii aad ku isticmaali lahayd `TOP N`.

## Faylasha la xiriira
- `SQLQuery1.sql` — script-ka SQL-ka ee asalka ah
- `screenshots/` — sawiro (PNG) ah oo muujinaya natiijada 14 query oo laga
  soo xulay faylka
- `README_screenshots.md` — sharaxaad faahfaahsan oo sawir kasta u gaar ah
