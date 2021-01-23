USE springboardopt;

ALTER TABLE course 
ADD PRIMARY KEY (crsCode);

ALTER TABLE professor 
ADD PRIMARY KEY (id);

ALTER TABLE student 
ADD PRIMARY KEY (id);

-- ---------------------------------------------
-- Juntion Tables -- teaching
-- ---------------------------------------------
ALTER TABLE teaching 
ADD FOREIGN KEY (profId) REFERENCES professor(id);

ALTER TABLE teaching 
ADD FOREIGN KEY (crsCode) REFERENCES course(crsCode);

-- ---------------------------------------------
-- Juntion Tables -- transcript
-- ---------------------------------------------
ALTER TABLE transcript
ADD FOREIGN KEY (studId) REFERENCES Student(id);

ALTER TABLE transcript
ADD FOREIGN KEY (crsCode) REFERENCES course(crsCode);

-- Only used to drop/modify keys
-- ALTER TABLE Transcript 
-- DROP FOREIGN KEY transcript_ibfk_3;

-- ALTER TABLE Transcript 
-- DROP PRIMARY KEY;

