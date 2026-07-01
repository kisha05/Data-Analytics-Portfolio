CREATE DATABASE student_project;
USE student_project;
SELECT * 
FROM student_data;
SELECT COUNT(*) AS total_students
FROM student_data;
SELECT sex,
COUNT(*) AS total_students
FROM student_data
GROUP BY sex;
SELECT AVG(age) AS average_age
FROM student_data;
SELECT AVG(G3) AS average_final_grade
FROM student_data;
SELECT *
FROM student_data
ORDER BY G3 DESC
LIMIT 10;
SELECT final_result, COUNT(*)
FROM student_data
GROUP BY final_result;
SELECT school, COUNT(*)
FROM student_data
GROUP BY school;
SELECT failures, AVG(G3)
FROM student_data
GROUP BY failures;
SELECT sex, AVG(G3)
FROM student_data
GROUP BY sex;
SELECT studytime, AVG(G3)
FROM student_data
GROUP BY studytime;
SELECT absences, G3
FROM student_data
ORDER BY absences DESC
LIMIT 10;


SELECT
ROUND(
SUM(CASE WHEN final_result='Pass' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2
) AS pass_percentage
FROM student_data;

SELECT school,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data
GROUP BY school;

SELECT age,sex,studytime,G3
FROM student_data
ORDER BY G3 DESC
LIMIT 10;


SELECT Medu,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data
GROUP BY Medu;
SELECT internet,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data
GROUP BY internet;

SELECT romantic,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data
GROUP BY romantic;
SELECT famsup,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data
GROUP BY famsup;

SELECT absences,
AVG(G3) AS avg_grade
FROM student_data
GROUP BY absences
ORDER BY absences;

SELECT *
FROM student_data
WHERE G3 = 20;
SELECT
COUNT(*) AS total_students,
MIN(G3) AS min_grade,
MAX(G3) AS max_grade,
ROUND(AVG(G3),2) AS avg_grade
FROM student_data;
