--MAÐAZALARIN BÝR TAKIM BÝLGÝLERÝNÝ SUBE ADINA GÖRE GÖRÜNTÜLE
Select 
BRANCH,
sum(LINENET) AS 'Toplam Satis', COUNT(*) as 'Satir Sayisi', 
MIN(LINENET) as 'En dusuk satis', MAX(LINENET) as 'En yuksek satis', 
AVG(LINENET) as 'Ortalama Satis'
from SALES --WHERE BRANCH = 'iSTANBUL Subesi'
GROUP BY BRANCH

