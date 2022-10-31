CREATE VIEW ExcellentEntrees
AS
SELECT Surname, FirstName, SecondName, SubjectName, Mark
	FROM Entrees
		JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
		JOIN Subjects ON Subjects.SubjectID = Marks.SubjectID
			WHERE Mark > 185;

CREATE VIEW ExcellentEntreesWithCheck
AS
SELECT * FROM ExcellentEntrees
WITH CHECK OPTION;

SELECT * FROM ExcellentEntreesWithCheck;

UPDATE ExcellentEntreesWithCheck SET Surname = 'Яблунев' WHERE Surname = 'Грушевський';
