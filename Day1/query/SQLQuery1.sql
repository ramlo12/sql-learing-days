create database student_db
use student_db

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    std_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    course VARCHAR(50),
    grade DECIMAL(5,2)
);
INSERT INTO student
(student_id,std_name, age, gender, city, course, grade)
VALUES
(1, 'Ahmed', 20, 'Male', 'Mogadishu', 'SQL', 85.50),
(2, 'Asha', 22, 'Female', 'Hargeisa', 'Python', 91.00),
(3, 'Mohamed', 19, 'Male', 'Mogadishu', 'SQL', 78.50),
(4, 'Hodan', 21, 'Female', 'Kismayo', 'Excel', 88.00),
(5, 'Ali', 23, 'Male', 'Bosaso', 'Python', 72.00),
(6, 'Fadumo', 20, 'Female', 'Mogadishu', 'SQL', 95.00),
(7, 'Omar', 24, 'Male', 'Hargeisa', 'Excel', 68.50),
(8, 'Maryan', 22, 'Female', 'Kismayo', 'Python', 84.00);
SELECT *
FROM student;

SELECT std_name, age
FROM student;
-- Soo saar magacyada dhammaan ardayda
SELECT std_name
FROM student;
-- Soo saar magaca iyo da'da arday kasta
SELECT std_name, age
FROM student;
-- Soo saar magaca, magaalada iyo koorsada
SELECT std_name, city, course
FROM student;

-- Soo saar courses-ka kala duwan
SELECT DISTINCT course
FROM student;

-- Soo saar magaalooyinka kala duwan
SELECT DISTINCT city
FROM student;
-- Magaca "name" waxaan ugu bixinnay "Student_Name"
SELECT std_name AS Student_Name
FROM student;
-- Magaca iyo grade-ka waxaan siinay magacyo cusub
SELECT
    std_name AS Student_Name,
    grade AS Student_Grade
FROM student;
-- Waxaan grade-ka ku daray 5, kadib natiijada waxaan u bixiyay New_Grade
SELECT
    std_name,
    grade + 5 AS New_Grade
FROM student;
-- Soo saar ardayda da'doodu tahay 20
SELECT *
FROM student
WHERE age = 20;
-- Soo saar ardayda dhigata SQL
SELECT *
FROM student
WHERE course = 'SQL';
-- Soo saar ardayda grade-koodu ka weyn yahay 80
SELECT std_name, grade
FROM student
WHERE grade > 80;
-- Soo saar ardayda grade-koodu yahay 80 ama ka badan
SELECT std_name, grade
FROM student
WHERE grade >= 80;
-- Soo saar ardayda aan dhigayn SQL
SELECT std_name, course
FROM student
WHERE course <> 'SQL';
-- Soo saar ardayda labada shuruudood buuxisa
SELECT std_name, age, grade
FROM student
WHERE age >= 20
  AND grade > 80;
  -- Soo saar ardayda dhigata SQL ama Python
SELECT std_name, course
FROM student
WHERE course = 'SQL'
   OR course = 'Python';
   -- Soo saar ardayda aan dhigayn SQL
SELECT std_name, course
FROM student
WHERE NOT course = 'SQL';
-- Soo saar ardayda dhigata mid ka mid ah saddexdan course
SELECT std_name, course
FROM student
WHERE course IN ('SQL', 'Python', 'Excel');
-- Soo saar ardayda aan qaadan SQL ama Python
SELECT std_name, course
FROM student
WHERE course NOT IN ('SQL', 'Python');

-- Soo saar ardayda grade-koodu u dhexeeyo 70 iyo 90
SELECT std_name, grade
FROM student
WHERE grade BETWEEN 70 AND 90;

-- Soo saar ardayda da'doodu u dhexeyso 20 iyo 22
SELECT std_name, age
FROM student
WHERE age BETWEEN 20 AND 22;
-- Magacyada ka bilaabma A
SELECT std_name
FROM student
WHERE std_name LIKE 'A%';
-- Magacyada ku dhammaada xarafka a
SELECT std_name
FROM student
WHERE std_name LIKE '%a';

-- Magacyada ay meel kasta kaga jirto "an"
SELECT std_name
FROM student
WHERE std_name LIKE '%an%';
-- Raadso magacyo ku bilaabma A, kadibna leh hal character
SELECT  std_name
FROM student
WHERE  std_name LIKE 'A_';
-- Waxaan ku daraynaa student aan weli grade loo qorin
INSERT INTO student
(student_id, std_name, age, gender, city, course, grade)
VALUES
(9, 'Abdi', 21, 'Male', 'Mogadishu', 'SQL', NULL);
SELECT *
FROM student;
-- Soo saar ardayda aan grade lahayn
SELECT std_name, grade
FROM student
WHERE grade IS NULL;
-- Soo saar ardayda grade-koodu jiro
SELECT std_name, grade
FROM student
WHERE grade IS NOT NULL;
-- Grade-ka ugu yar ilaa kan ugu weyn
SELECT std_name, grade
FROM student
WHERE grade IS NOT NULL
ORDER BY grade ASC;
-- Grade-ka ugu weyn ilaa kan ugu yar
SELECT std_name, grade
FROM student
WHERE grade IS NOT NULL
ORDER BY grade DESC;
-- Ardayda ugu yar ilaa kuwa ugu weyn
SELECT std_name, age
FROM student
ORDER BY age ASC;
SELECT std_name, age
FROM student
ORDER BY age;
-- Marka hore city ayaa la kala hormarinayaa,
-- kadib grade ayaa lagu kala hormarinayaa
SELECT std_name, city, grade
FROM student
WHERE grade IS NOT NULL
ORDER BY city ASC, grade DESC;

-- Soo saar 5 arday oo keliya

SELECT TOP 5
    std_name,
    age
FROM student
ORDER BY age DESC;
