CREATE OR REPLACE FUNCTION InsertMarkTriggerFunc() RETURNS trigger
	AS $InsertMarkTriggerFunc$
	DECLARE
		MarksAmount BIGINT;
	BEGIN
		SELECT COUNT(*) INTO MarksAmount
			FROM Marks 
		   		WHERE Marks.EntreeID = NEW.EntreeID 
					AND Marks.SpecialtyID = NEW.SpecialtyID
					AND Marks.SubjectID = NEW.SubjectID;
		IF MarksAmount > 0 THEN
		RAISE EXCEPTION 'Дані щодо оцінки з цього предмету вже існують у бд!';
		END IF;
		RETURN NEW;
	END;
$InsertMarkTriggerFunc$ LANGUAGE plpgsql;

CREATE TRIGGER InsertMarkTrigger 
BEFORE INSERT ON Marks
FOR EACH ROW
EXECUTE PROCEDURE InsertMarkTriggerFunc();

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(150, 1, 3, 4);

INSERT INTO Marks(Mark, EntreeID, SubjectID, SpecialtyID) VALUES(150, 1, 1, 3);