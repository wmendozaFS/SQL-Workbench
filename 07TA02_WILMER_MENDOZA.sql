DROP DATABASE IF EXISTS Tienda;
CREATE DATABASE Tienda;
USE TIENDA;
CREATE TABLE Producto(
IdProduc INT PRIMARY KEY auto_increment,
NomProduc VARCHAR(40),
DescProduc VARCHAR(100),
PrecioProduc DECIMAL(5,2),
StockProduc INT);
DESCRIBE Producto;
SELECT * FROM PRODUCTO;
ALTER TABLE Producto ADD COLUMN ClasifProduc ENUM("Fungible", "No Fungible", "Perecedero", "No Perecedero");
ALTER TABLE Producto MODIFY DescProduc TEXT;
DESCRIBE Producto;
SELECT * FROM PRODUCTO;
ALTER TABLE Producto DROP COLUMN ClasifProduc;
INSERT INTO Producto (idProduc, NomProduc, DescProduc, PrecioProduc, StockProduc, ClasifProduc) VALUES(1000,"Marcador", "Rotulador Borrable", 2.50, 100, "Fungible");
INSERT INTO Producto (NomProduc, DescProduc, PrecioProduc, StockProduc, ClasifProduc) VALUES("Aguacate", "Fruta Aceitosa", 2.00, 5, "Perecedero");
INSERT INTO Producto (NomProduc, DescProduc, PrecioProduc, StockProduc, ClasifProduc) VALUES("Atum Enlatado", "Atum enlatado x 6", 6.00, 20, "No Perecedero");
SELECT * FROM PRODUCTO;
UPDATE Producto SET PrecioProduc=1.00, StockProduc=2 WHERE NomProduc="Aguacate";
DELETE FROM Producto WHERE IdProduc=1001;
SELECT * FROM PRODUCTO;
SELECT NomProduc, PrecioProduc FROM PRODUCTO;
DROP TABLE Producto;
