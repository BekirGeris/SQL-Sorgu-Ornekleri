--MA�AZALARIN B�R TAKIM B�LG�LER�N� SUBE ADINA G�RE G�R�NT�LE
Select 
BRANCH,
sum(LINENET) AS 'Toplam Sat�s', COUNT(*) as 'Satir Sayisi', 
MIN(LINENET) as 'En dusuk satis', MAX(LINENET) as 'En yuksek satis', 
AVG(LINENET) as 'Ortalama Satis'
from SALES --WHERE BRANCH = 'iSTANBUL Subesi'
GROUP BY BRANCH

