use student_db
INSERT INTO student
(student_id, std_name, age, gender, city, course, grade)
VALUES 
(9, 'Abdi', 21, 'Male', 'Mogadishu', 'SQL', NULL);
select count(*) as total_student from student
select*from student
select min(grade) from student
select max(grade) from student
select sum(grade) from student
select age,count(*) as total_student  from student group by age
having count(*)>=1

update student set age=34 where student_id=2

delete from student where student_id=5
delete from student where student_id=2
delete from student where student_id=1
delete from student where student_id=3
delete from student where student_id=9
delete from student where student_id=7
delete from student where student_id=4

alter table student add email varchar(55),std_address varchar(40)

alter table student add constraint cheak_std_age check(age>=18)


alter table student alter column city varchar (77)
select GETDATE () as curant_date 
select dateadd(day,10,'2026-01-01')
SELECT DATEDIFF(DAY, '2026-01-01', '2026-01-10') AS Days_Difference;
SELECT DATEDIFF(DAY, '2026-01-01', '2028-01-19') AS Days_Difference;

