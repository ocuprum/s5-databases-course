-- a
SELECT DISTINCT Surname, FirstName, SecondName 
    FROM Entrees 
        JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
            WHERE Marks.SubjectID = 3 AND Mark > (
                SELECT AVG(Mark)
                    FROM Subjects
                        JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
			                WHERE SubjectName = 'Математика'
				                GROUP BY SubjectName
            );

-- b 
ALTER TABLE Entrees
    ADD MarkSUM SMALLINT;

UPDATE Entrees
    SET MarkSUM = (
        SELECT SUM(Mark)
	        FROM Marks
				GROUP BY Marks.EntreeID
					HAVING Entrees.EntreeID = Marks.EntreeID
    );

SELECT * From Entrees;

SELECT Surname, FirstName, SecondName, MarkSUM
	FROM Entrees 
	WHERE MarkSUM = (
		SELECT MAX(MarkSUM)
    		FROM Entrees
		);

-- c
SELECT Surname, FirstName, SecondName, SubjectName
	FROM Entrees
		JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
        JOIN Subjects ON Subjects.SubjectID = Marks.SubjectID
			WHERE Entrees.EntreeID NOT IN ( 
				SELECT DISTINCT Entrees.EntreeID
    				FROM Entrees
						JOIN Marks ON Marks.EntreeID = Entrees.EntreeID 
							WHERE Mark < 170
				) AND ControlType = 'Співбесіда';