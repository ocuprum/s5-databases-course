-- 1
ALTER TABLE Subjects ADD CONSTRAINT ControlTypeCheck CHECK (ControlType = 'Екзамен' OR ControlType = 'Атестат');
ALTER TABLE Marks ADD CONSTRAINT MarkCheck CHECK (Mark >= 100 AND Mark <= 200);

-- 2
ALTER TABLE Marks ADD CONSTRAINT EntreeForeignKey FOREIGN KEY (EntreeID) REFERENCES Entrees(EntreeID) ON DELETE CASCADE;
ALTER TABLE Marks ADD CONSTRAINT SubjectForeignKey FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID) ON DELETE CASCADE;
ALTER TABLE Marks ADD CONSTRAINT SpecialtyForeignKey FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID) ON DELETE CASCADE;

-- 3
ALTER TABLE Marks DROP CONSTRAINT MarkCheck;
INSERT INTO Specialties(SpecialtyName) VALUES ('Прикладна математика');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Математика', 'Екзамен');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Меднікова', 'Олександра', 'Валеріївна', 'Жіночий', '2002-03-02')
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(-1, 1, 1, 1);
ALTER TABLE Marks ADD CONSTRAINT MarkCheck CHECK (Mark >= 100 AND Mark <= 200);

-- 4
UPDATE Marks SET Mark = 120;
ALTER TABLE Marks ADD CONSTRAINT MarkCheck CHECK (Mark >= 100 AND Mark <= 200);

-- 5
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Фізкультура', 'Співбесіда'); 
ALTER TABLE Subjects DROP CONSTRAINT ControlTypeCheck;
ALTER TABLE Subjects ADD CONSTRAINT ControlTypeCheck CHECK (ControlType = 'Екзамен' OR ControlType = 'Атестат' OR ControlType = 'Співбесіда');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Фізкультура', 'Співбесіда'); 

--6
ALTER TABLE Entrees ADD Single VARCHAR(3) DEFAULT 'так';
ALTER TABLE Entrees DROP COLUMN Single;

--7
ALTER TABLE Entrees RENAME TO Students;
ALTER TABLE Students RENAME TO Entrees;