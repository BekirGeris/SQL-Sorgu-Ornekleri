--Subqery ile m��teri ilgisi getirme
SELECT U.ID, U.USERNAME_,
(SELECT COUNT(*) FROM BASKET WHERE USERID = U.ID) AS SepetUrunAdeti,
(SELECT MIN(CREATEDDATE) FROM BASKET WHERE USERID = U.ID) AS IlkSatisTarihi,
(SELECT MAX(CREATEDDATE) FROM BASKET WHERE USERID = U.ID) AS SonSatisTarihi,
(SELECT SUM(TOTAL) FROM BASKETDETAIL WHERE BASKETID IN (SELECT ID FROM BASKET WHERE USERID = U.ID)) AS Toplam,
(SELECT COUNT(*) FROM BASKETDETAIL WHERE BASKETID IN (SELECT ID FROM BASKET WHERE USERID = U.ID)) AS SatilanUrunAdeti
FROM USER_ U
WHERE (SELECT COUNT(*) FROM BASKET WHERE USERID = U.ID) > 0