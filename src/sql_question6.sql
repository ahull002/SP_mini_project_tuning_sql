USE springboardopt;

-- -------------------------------------
SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';

-- 6. List the names of students who have taken all courses offered by department v8 (deptId).
WITH 
	stud_lookup AS (Select crsCode AS stud_course, s.name AS stud, studId FROM transcript AS t INNER JOIN student AS s ON t.studId=s.id),
    mat_dept AS (SELECT * FROM course WHERE deptId=@v8)

SELECT 
	* 
FROM 
	stud_lookup
WHERE
	stud_course IN (SELECT crsCode FROM mat_dept)