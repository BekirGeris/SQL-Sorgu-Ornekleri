CREATE TABLE BASKET(
ID INT IDENTITY(1,1),
USERID INT,
CREATEDDATE DATETIME,
LASTMODIFIEDDATE DATETIME,
ITEMCOUNT INT,
TOTALPRICE FLOAT,
STATUS_ INT,
CONSTRAINT [PK_BASKET] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE ORDER_(
ID INT IDENTITY(1,1),
USERID INT,
BASKETID INT,
CREATEDDATE DATETIME,
ITEMCOUNT INT,
TOTALPRICE FLOAT,
STATUS_ INT,
CONSTRAINT [PK_ORDER_] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE BASKETDETAIL(
ID INT IDENTITY(1,1),
BASKETID INT,
ITEMID INT,
AMOUNT FLOAT,
PRICE FLOAT,
TOTALPRICE FLOAT,
DATE_ DATETIME,
CONSTRAINT [PK_BASKETDETAIL] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE ORDERDETAIL(
ID INT IDENTITY(1,1),
ORDERID INT,
BASKETDETAILID INT,
ITEMID INT,
AMOUNT FLOAT,
PRICE FLOAT,
TOTALPRICE FLOAT,
CONSTRAINT [PK_ORDERDETAIL] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE PAYMENT(
ID INT IDENTITY(1,1),
BASKETID INT,
TOTALPRICE FLOAT,
PAYMENTTYPE INT,
DATE_ DATETIME,
ISOK BIT,
APPROVECODE VARCHAR(20),
ERROR_ VARCHAR(1000),
CONSTRAINT [PK_PAYMENT] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE INVOICE(
ID INT IDENTITY(1,1),
ORDERID INT,
INVOICENO VARCHAR(50),
DATE_ DATETIME,
CARGOFICHENO VARCHAR(50),
STATUS_ INT,
CONSTRAINT [PK_INVOICE] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE INVOICEDETAIL(
ID INT IDENTITY(1,1),
INVOICEID INT,
ORDERDETAILID INT,
ITEMID INT,
PRICE FLOAT,
AMOUNT FLOAT,
CONSTRAINT [PK_INVOICEDETAIL] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE COUNTRY(
ID INT IDENTITY(1,1),
COUNTRY VARCHAR(100),
CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED (ID ASC))
CREATE TABLE TOWN(
ID INT IDENTITY(1,1),
TOWN VARCHAR(100),
CONSTRAINT [PK_TOWN] PRIMARY KEY CLUSTERED (ID ASC))
CREATE TABLE DISTRICT(
ID INT IDENTITY(1,1),
DISTRICT VARCHAR(100),
CONSTRAINT [PK_DISTRICT] PRIMARY KEY CLUSTERED (ID ASC))
CREATE TABLE CITY(
ID INT IDENTITY(1,1),
CITY VARCHAR(100),
CONSTRAINT [PK_CITY] PRIMARY KEY CLUSTERED (ID ASC))

CREATE TABLE ITEM(
ID INT IDENTITY(1,1),
ITEMCODE VARCHAR(20),
ITEMNAME VARCHAR(100),
PRICE FLOAT,
CATEGORY1 VARCHAR(50),
CATEGORY2 VARCHAR(50),
CATEGORY3 VARCHAR(50),

CONSTRAINT [PK_ITEM] PRIMARY KEY CLUSTERED (ID ASC))




