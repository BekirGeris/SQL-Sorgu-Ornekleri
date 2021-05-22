--Jo�n ile m��teri ilgisi getirme
SELECT U.ID, U.USERNAME_,
COUNT(B.ID) AS SepetAdeti,
MIN(B.CREATEDDATE) AS IlkSepetOlusturmaTarihi,
MAX(B.CREATEDDATE) AS SoNSepetOlusturmaTarihi,
SUM(BD.TOTAL) AS Toplam,
COUNT(BD.ID) AS SatilanUrunAdeti
FROM USER_ U
INNER JOIN BASKET B ON B.USERID=U.ID
INNER JOIN BASKETDETAIL BD ON BD.BASKETID = B.ID
GROUP BY U.ID, U.USERNAME_