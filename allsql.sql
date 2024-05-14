CREATE DATABASE colleges;
USE colleges;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
GRADE VARCHAR(1),
city VARCHAR(30)
);
CREATE TABLE dept(
id int PRIMARY KEY,
name varchar(50)
);
CREATE TABLE TEACHER(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
foreign key (dept_id) references dept(id)
);



INSERT INTO student
(rollno,name,marks,GRADE,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"suman",98,"A","Mumbai"),
(103,"sunil",86,"B","Delhi"),
(104,"kriti",99,"A","Patna"),
(105,"aditi",66,"D","BBSR"),
(106,"Rohan",78,"C","Delhi");

SELECT * FROM student;
SELECT rollno,name FROM student;
SELECT city FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE marks+10 >80;
SELECT * FROM student WHERE CITY = "BBSR";
SELECT * FROM student WHERE CITY = "BBSR" AND marks ="70";
SELECT * FROM student WHERE CITY = "BBSR" OR marks ="70";
SELECT * FROM student WHERE  marks ="70";
SELECT * FROM student WHERE  marks BETWEEN 80 AND 90;
SELECT * FROM student  LIMIT 3;
SELECT * FROM student  order by marks ASC LIMIT 3;
SELECT MAX(marks) from student;
SELECT AVG(marks) from student;
SELECT MIN(marks) from student;
SELECT COUNT(name) from student;
SELECT * FROM STUDENT;
use colleges;
SELECT city, COUNT(name) FROM student GROUP BY city;
SELECT city,AVG(marks) from student group by city Order by AVG(MARKS) DESC; 
use colleges;
SELECT AVG(marks) from stu where (select name from stu where marks>avg);

SELECT COUNT(name),city FROM student GROUP BY city HAVING MAX(marks)>90;
/*general order*/
SELECT city FROM student WHERE grade ="A" GROUP BY city HAVING MAX(marks)>=80 ORDER BY city DESC;
/*TABEL RELATED QUERY*/
SET SQL_SAFE_UPDATES =0;

UPDATE student SET grade = "O" WHERE grade ="A";
DELETE FROM student  where rollno = 106;

 select * from student;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY age VARCHAR(2);

ALTER TABLE student
CHANGE age stud_age INT;

ALTER TABLE student
DROP COLUMN STUD_AGE;


 select * from student;
 
 ALTER TABLE STUDENT
 RENAME TO STU;
 
 ALTER TABLE STU
 CHANGE COLUMN name full_name VARCHAR(60);
 
select * from stu;
DELETE FROM STU WHERE MARKS <80;
ALTER TABLE STU
DROP COLUMN GRADE;
select * from stu;

use colleges;

/*join*/
create table student(
id int primary key,
name varchar(50)
);
INSERT INTO student (id,name)
VALUES
(101,"BOB"),
(102,"ALEN"),
(103,"CASEY");

create table course(
id int primary key,
course varchar(50)
);
INSERT INTO course (id,course)
VALUES
(101,"PHYSICS"),
(102,"MATHS"),
(103,"ENGLISH");
INSERT INTO course (id,course)
VALUES
(104,"hindi"),
(105,"sst"),
(106,"computer");

select * from student inner join course on student.id = course.id;
select * from student left join course on student.id = course.id;
select * from student right join course on student.id = course.id;
select * from student as a left join course as b on a.id = b.id UNION
select * from student right join course on student.id = course.id;
CREATE TABLE SELFJO(
ID INT NOT NULL,
NAME VARCHAR(50),
MANAGER_ID int);
INSERT INTO SELFJO (ID,NAME,MANAGER_ID)
VALUES
(101,"BOB",103),
(102,"ALEN",104),
(103,"CASEY",NULL),
(104,"Donaid",103);
SELECT*FROM SELFJO;
SELECT A.NAME AS MANAGER_NAME,B.NAME FROM SELFJO AS A JOIN SELFJO AS B ON A.ID = B.MANAGER_ID;
select* from stu;

/*mysql subquery*/
select full_name,marks from stu where marks>(SELECT AVG(marks) from stu) ;
select rollno from stu where rollno%2 = 0;
select full_name,rollno from stu where  rollno in (select rollno from stu where rollno%2 = 0); 

/* mysql view*/
create view teachers as select rollno,full_name from stu;
select * from teachers;