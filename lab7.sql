CREATE OR REPLACE FUNCTION EntreeAvgMark(
   	EntreeSurname VARCHAR(255), 
	EntreeFirstName VARCHAR(255), 
	EntreeSecondName VARCHAR(255)
)
RETURNS TABLE(AvgMark NUMERIC)
AS 
$$
    SELECT AvgMark
    FROM (
    	SELECT Entrees.EntreeID, Surname, FirstName, SecondName, AVG(Mark) AS AvgMark
    	FROM Entrees
			JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
        	JOIN Subjects ON Subjects.SubjectID = Marks.SubjectID
           		GROUP BY Entrees.EntreeID
) temp
    	WHERE temp.Surname = EntreeSurname AND temp.FirstName = EntreeFirstName AND temp.SecondName = EntreeSecondName;
$$
LANGUAGE SQL;

SELECT * FROM EntreeAvgMark('Квітка', 'Лариса', 'Петрівна');


