INSERT INTO Specialties(SpecialtyName) VALUES ('Прикладна фізика');
INSERT INTO Specialties(SpecialtyName) VALUES ('Кібербезпека');
INSERT INTO Specialties(SpecialtyName) VALUES ('Прикладна математика');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Фізика', 'Атестат');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Англійська мова', 'Екзамен');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Математика', 'Співбесіда');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Іванов', 'Іван', 'Іванович', 'Чоловічий', '2001-01-01');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Петренко', 'Олександр', 'Михайлович', 'Чоловічий', '2003-05-11');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Хвильова', 'Аліса', 'Петрівна', 'Жіночий', '2000-12-07');
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(180, 1, 2, 3);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(200, 2, 1, 2);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(150, 3, 3, 1);
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Тесфайе', 'Ейбел', 'Ейбелович', 'Чоловічий', '2006-11-11');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Лондон', 'Джек', 'Петрович', 'Чоловічий', '2004-11-03');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Харт', 'Емілія', 'Сидорівна', 'Жіночий', '2002-02-02');



INSERT INTO Specialties(SpecialtyName) VALUES ('Лінгвістика');
INSERT INTO Specialties(SpecialtyName) VALUES ('Логопедія');
INSERT INTO Specialties(SpecialtyName) VALUES ('Матеріалознавство');

INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Українська мова', 'Атестат');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Інформатика', 'Екзамен');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Біологія', 'Співбесіда');
INSERT INTO Subjects(SubjectName, ControlType) VALUES ('Хімія', 'Екзамен');

INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Гоголь', 'Микола', 'Васильович', 'Чоловічий', '2002-02-03');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Грушевський', 'Михайло', 'Сергійович', 'Чоловічий', '2001-10-11');
INSERT INTO Entrees(Surname, FirstName, SecondName, Sex, BirthDate) VALUES ('Квітка', 'Лариса', 'Петрівна', 'Жіночий', '2000-02-09');

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(194, 1, 1, 3);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(150, 1, 3, 3);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(171, 2, 2, 2);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(144, 2, 5, 2);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(167, 3, 1, 1);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(189, 3, 4, 1);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(200, 4, 2, 4);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(166, 4, 3, 4);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(159, 4, 4, 4);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(182, 5, 2, 5);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(179, 5, 4, 5);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(160, 5, 6, 5);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(182, 6, 1, 6);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(193, 6, 3, 6);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(174, 6, 7, 6);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(184, 7, 1, 2);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(173, 7, 2, 2);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(164, 7, 3, 2);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(189, 8, 1, 3);--
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(195, 8, 2, 3);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(167, 8, 3, 3);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(191, 9, 4, 5);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(189, 9, 6, 5);
INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(195, 9, 7, 5);

TRUNCATE Marks CASCADE;
TRUNCATE Subjects CASCADE;
TRUNCATE Specialties CASCADE;
TRUNCATE Entrees CASCADE;