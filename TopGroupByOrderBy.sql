--EN COK SATI� YAPAN MA�AZALARI SIRALA �LK 10 U G�R�NT�LE
select TOP 10 BRANCH AS SUBEADI, SUM(LINENET) AS TOPLAMSATIS
FROM SALES
GROUP BY BRANCH ORDER BY SUM(LINENET) DESC