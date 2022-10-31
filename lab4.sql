-- Вибрати всіх абітурієнтів по спеціальностях або певної спеціальності
SELECT DISTINCT Surname, FirstName, SecondName, SUM(Mark)
    FROM Entrees
        JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
        JOIN Subjects ON Marks.SubjectID = Subjects.SubjectID
            WHERE Marks.Mark >= 170;

-- Вибрати всіх абітурієнтів, що здали вступні іспит, і їх рейтинг (сума балів за всіма зданих предметів) 
--за спеціальностями або певної спеціальності
SELECT Surname, FirstName, SecondName, SUM(Mark)
	FROM Entrees
		JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
			WHERE Entrees.EntreeID NOT IN ( 
				SELECT DISTINCT Entrees.EntreeID
    				FROM Entrees
						JOIN Marks ON Marks.EntreeID = Entrees.EntreeID 
							WHERE Mark < 170
				)
				GROUP BY Entrees.EntreeID;

-- Підрахувати середній бал з дисциплін і спеціальностей
SELECT SubjectName, AVG(Mark)
    FROM Subjects
        JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
            GROUP BY SubjectName

SELECT SpecialtyName, AVG(TotalMark)
	FROM (
		SELECT Entrees.EntreeID, Specialties.SpecialtyID, SUM(Mark) AS TotalMark
			FROM Entrees
				JOIN Marks ON Entrees.EntreeID = Marks.EntreeID
				JOIN Specialties ON Specialties.SpecialtyID = Marks.SpecialtyID
					GROUP BY Entrees.EntreeID, Specialties.SpecialtyID
	) tm
		JOIN Marks ON tm.EntreeID = Marks.EntreeID
		JOIN Specialties ON tm.SpecialtyID = Specialties.SpecialtyID
			GROUP BY Specialties.SpecialtyName;

