CREATE ROLE accounter;
CREATE USER Bill WITH PASSWORD 'BillsPIN' IN ROLE accounter;

GRANT EXECUTE ON FUNCTION EntreeAvgMark TO Bill;

REVOKE ALL PRIVILEGES ON FUNCTION EntreeAvgMark FROM Bill;

-------------------------
CREATE EXTENSION pgcrypto;

UPDATE Entrees T1 
SET Surname = T2.SN 
FROM (SELECT pgp_sym_encrypt(Surname, 'Password', 'compress-algo=1, cipher-algo=aes256') 
	  AS SN, EntreeID FROM Entrees) T2
	  WHERE T1.EntreeID = T2.EntreeID;

UPDATE Entrees T1 
SET Surname = T2.SN 
FROM (SELECT pgp_sym_decrypt(Surname::bytea, 'Password') 
	  AS SN, EntreeID FROM Entrees) T2
	  WHERE T1.EntreeID = T2.EntreeID;