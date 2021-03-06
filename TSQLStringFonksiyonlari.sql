--ASCII
SELECT ASCII('?')

--CHAR
SELECT CHAR(199)

--SUBSTRING
SELECT SUBSTRING('BEK?R GER?? SQL ?ALI?IYOR', 5, 4)

--CHARINDEX
SELECT CHARINDEX('eK', 'bEK?R GER??' ,1)

--CONCAT
SELECT CONCAT('BEK?R', ' ', 'GER??')
SELECT CONCAT_WS(' ', 'BEK?R', 'GER??')
SELECT 
CONCAT_WS(' ', USERNAME_, PASSWORD_, NAMESURNAME)
FROM USER_

--FORMAT
SELECT FORMAT(GETDATE(), 'd', 'en-us')
SELECT FORMAT(GETDATE(), 'd', 'en-us')
SELECT FORMAT(GETDATE(), 'D', 'de-de')

--LEFT. RIGHT VE LEN
SELECT LEFT('BEK?R GER??' , 5)
SELECT RIGHT('BEK?R GER??' , 5)
SELECT LEN('BEK?R GER??')
SELECT LEFT('BEK?R GER??' , CHARINDEX(' ', 'BEK?R GER??')),
RIGHT('BEK?R GER??' , LEN('BEK?R GER??') - CHARINDEX(' ', 'BEK?R GER??'))

--TRIM, LTRIM VE RTRIM
SELECT TRIM('   ? K    K   BEK?R GER??    ')
SELECT LTRIM('   ? K    K   BEK?R GER??    ')
SELECT RTRIM(' ? K    K   BEK?R GER?? ')

--LOWER, UPPER, REVERSE, REPLICATE
SELECT LOWER('Bekir')
SELECT UPPER('Bekir')
SELECT REVERSE('Bekir')
SELECT REPLICATE('Bekir', 2)

--REPLACE
SELECT REPLACE('BEK?R GER??', 'B', '555')

