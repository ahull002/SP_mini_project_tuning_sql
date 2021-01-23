-- USE AGGREGATE FUNCTIONS and ROW Number

USE springboardopt;

SELECT *
FROM course
WHERE crsCode IN ("MGT157", "EE820", "MGT382");

UPDATE course SET crsCode = "MGT157.1"
WHERE crsCode = "MGT157" AND crsNAME = "Network Programming Languages Fall 17 (ITH) CR Fall 18 (ITH) CR Fall 19 (ITH) CR";

UPDATE course SET crsCode = "EE820.1"
WHERE crsCode = "EE820" AND crsNAME = "System Security Spring 19 (ITH) CR Spring 20 (ITH) CR Fall 20 (ITH) CR";

UPDATE course SET crsCode = "MGT382.1"
WHERE crsCode = "MGT382" AND crsNAME = "Introduction to Cryptography Spring 17 (ITH) CR";

ALTER TABLE professor 
ADD PRIMARY KEY (id);

SELECT *
FROM course
WHERE crsCode IN ("MGT157", "EE820", "MGT382");