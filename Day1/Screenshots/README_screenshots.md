# Sharaxaada Screenshots-ka (Query Results)

Sawirradan 14-ka PNG ah waxay muujinayaan natiijada 14 query oo laga soo xulay
`SQLQuery1.sql`, iyagoo ku shaqeynaya xogta 9-ka arday ee `student` table-ka.
Sawir kasta wuxuu leeyahay: cinwaanka, query-ga la orday (buluug), iyo
jadwalka natiijada.

---

### 1. `01_select_all.png` — SELECT * (Dhammaan xogta)
```sql
SELECT * FROM student;
```
Muujinaysa dhammaan 7-da column iyo 9-da saf ee table-ka `student`, oo ay ku
jirto safka Abdi (ID 9) oo grade-kiisu yahay `NULL`.

### 2. `02_select_columns.png` — Xulasho Columns gaar ah
```sql
SELECT std_name, city, course FROM student;
```
Waxay muujinaysaa 3 column oo kaliya: magaca, magaalada, koorsada.

### 3. `03_distinct_course.png` — DISTINCT
```sql
SELECT DISTINCT course FROM student;
```
Waxay soo saartaa 3 qiime oo kaliya (`SQL`, `Python`, `Excel`) — nuqul kastoo
ku soo noqday waa la tirtiraa.

### 4. `04_alias.png` — Column Aliasing (AS)
```sql
SELECT std_name AS Student_Name, grade AS Student_Grade FROM student;
```
Columns-ka waxaa loo bixiyay magacyo cusub: `Student_Name` iyo `Student_Grade`.

### 5. `05_calculated_column.png` — Calculated Column
```sql
SELECT std_name, grade + 5 AS New_Grade FROM student;
```
Grade-ka asalka ah waxaa lagu daray 5, natiijada cusub waxaa loo bixiyay
`New_Grade`. Fiiro gaar ah: safka Abdi wuxuu sii ahaanayaa `NULL` maadaama
`NULL + 5 = NULL`.

### 6. `06_where_equal.png` — WHERE age = 20
```sql
SELECT * FROM student WHERE age = 20;
```
2 arday oo kaliya (Ahmed iyo Fadumo) ayaa da'doodu tahay 20.

### 7. `07_where_greater.png` — WHERE grade > 80
```sql
SELECT std_name, grade FROM student WHERE grade > 80;
```
5 arday oo grade-koodu ka weyn yahay 80.

### 8. `08_where_or.png` — WHERE ... OR ...
```sql
SELECT std_name, course FROM student
WHERE course = 'SQL' OR course = 'Python';
```
7 arday oo qaatay ama SQL ama Python (Excel way ka maqan tahay).

### 9. `09_where_in.png` — WHERE course IN (...)
```sql
SELECT std_name, course FROM student
WHERE course IN ('SQL','Python','Excel');
```
Dhammaan 9-da arday, sababtoo ah saddexdaba courses way ku jiraan liiska `IN`.

### 10. `10_where_between.png` — WHERE grade BETWEEN 70 AND 90
```sql
SELECT std_name, grade FROM student WHERE grade BETWEEN 70 AND 90;
```
5 arday oo grade-koodu u dhexeeyo 70 iyo 90 (labada xad way ku jiraan).

### 11. `11_like_starts_a.png` — WHERE std_name LIKE 'A%'
```sql
SELECT std_name FROM student WHERE std_name LIKE 'A%';
```
4 magac oo ku bilaabma xarafka "A": Ahmed, Asha, Ali, Abdi.

### 12. `12_is_null.png` — WHERE grade IS NULL
```sql
SELECT std_name, grade FROM student WHERE grade IS NULL;
```
Saf kaliya ah: Abdi — arday weli grade loo qorin.

### 13. `13_order_by_city_grade.png` — ORDER BY (labo column)
```sql
SELECT std_name, city, grade FROM student
WHERE grade IS NOT NULL
ORDER BY city ASC, grade DESC;
```
Natiijada waxaa marka hore lagu kala saaray magaalada (A→Z), kadibna gudaha
magaalo kasta grade-ka ugu sarreeya ayaa la horreeyay. Abdi (grade NULL)
waa laga saaray natiijada.

### 14. `14_top5_limit.png` — TOP 5 / LIMIT 5
```sql
-- SQL Server:
SELECT TOP 5 std_name, age FROM student ORDER BY age DESC;

-- Natiijadan waxaa lagu soo saaray isla mideeyaha LIMIT:
SELECT std_name, age FROM student ORDER BY age DESC LIMIT 5;
```
5-ta arday ee ugu da'da weyn, laga bilaabo kan ugu weyn.

---

**Fiiro:** Sawiradan waxaa lagu sameeyay iyadoo la adeegsanayo SQLite si loo
tijaabiyo query-yada — natiijooyinka waa isku mid marka la barbardhigo
SQL Server, marka laga reebo isbeddel yar oo syntax ah (`TOP` ↔ `LIMIT`).
