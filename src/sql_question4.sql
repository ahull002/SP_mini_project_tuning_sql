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

-- 4. List the names of students who have taken a course taught by professor v5 (name).

-- SELECT name FROM Student,
	-- (SELECT studId FROM Transcript,
		-- (SELECT crsCode, semester FROM Professor
			-- JOIN Teaching
			-- WHERE Professor.name = @v5 AND Professor.id = Teaching.profId) as alias1
	-- WHERE Transcript.crsCode = alias1.crsCode AND Transcript.semester = alias1.semester) as alias2
-- WHERE Student.id = alias2.studId;

WITH 
	stud_lookup AS (Select crsCode AS stud_course, s.name AS stud, studId FROM transcript AS t INNER JOIN student AS s ON t.studId=s.id),
    prof_lookup AS (SELECT crsCode AS prof_course, p.name AS prof, profId FROM teaching AS t INNER JOIN professor AS p ON t.profId=p.id),
    stpr_lookup AS (SELECT * FROM stud_lookup LEFT JOIN prof_lookup ON stud_lookup.stud_course = prof_lookup.prof_course)

Select 
	*
From 
	stpr_lookup
WHERE
	prof = @v5