-- ALTER TABLE course 
-- ADD PRIMARY KEY (crsCode);

-- ALTER TABLE professor 
-- ADD PRIMARY KEY (id);

-- ALTER TABLE student 
-- ADD PRIMARY KEY (id);

ALTER TABLE teaching 
ADD FOREIGN KEY (profId) REFERENCES professor(id);

-- ALTER TABLE Transcript 
-- ADD PRIMARY KEY(crsCode,semester);

ALTER TABLE Transcript
ADD FOREIGN KEY (studId) REFERENCES Student(id);