--B�R MA�AZANIN G�N BAZLI SATI� RAKAMLARI
SELECT BRANCH SUBE, DATE_ TER�H, SUM(LINENET) TOPLAMSATIS, COUNT(*) SATIRSAYISI
FROM SALES 
--WHERE BRANCH = 'ANKARA SUBES�' --and DATE_ = '2017-01-05'
GROUP BY BRANCH, DATE_
ORDER BY BRANCH, DATE_ 