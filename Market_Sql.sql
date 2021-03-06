CREATE DATABASE Market_Sql

USE Market_Sql

CREATE TABLE Brand
(
   ID INT IDENTITY PRIMARY KEY,
   Name NVARCHAR(20) NOT NULL
)

INSERT INTO Brand
VALUES
('BORJOMI'),
('AHMADCHAY'),
('LIPTON'),
('FRESH'),
('FRUKTOVIY')

SELECT * FROM Brand

CREATE TABLE Products
(
   ID INT IDENTITY PRIMARY KEY,
   Name NVARCHAR(20) NOT NULL,
   Price FLOAT NOT NULL,
   BrandID INT CONSTRAINT BR_Products_BrandID FOREIGN KEY(BrandID) REFERENCES Brand(ID)
)

INSERT INTO Products
VALUES
(' MINERAL_SU',2,1),
('EARL_GREY',5,2),
('YAŞIL SOYUQ ÇAY',10,3),
('BAR ŞAFTALI',20,4),
('SAD_MULTIMEYVE',15,5)

SELECT * FROM Products

SELECT * FROM Products WHERE Price>10


SELECT * FROM Brand WHERE LEN(Name)>5