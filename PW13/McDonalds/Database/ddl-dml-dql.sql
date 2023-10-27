
CREATE DATABASE mcdonalds;
USE             mcdonalds;


CREATE TABLE lanches (
	lancheId   INT AUTO_INCREMENT,
	lancheNome NVARCHAR(30) NOT NULL,
    
	PRIMARY KEY (lancheId)
);

INSERT INTO lanches (lancheNome) VALUES
	('Big Mac'),
	('Quarterão com Queijo'),
	('McNífico Bacon'),
	('Cheddar McMelt'),
	('Duplo Burger Bacon'),
	('Cheeseburger'),
	('McFiesta'),
	('Hamburger'),
	('Big Tasty'),
	('McChicken'),
	('Triplo Burger'),
	('McCrispy Chicken Elite');

-- select lancheId from lanches;
-- select * from lanches where lancheId = 7;

CREATE TABLE ingredientes(
	ingredienteId   int AUTO_INCREMENT,
	ingredienteNome NVARCHAR(30) NOT NULL,
	PRIMARY KEY (ingredienteId)
);

INSERT INTO ingredientes (ingredienteNome) VALUES
	('Hambúrguer de carne bovina'),
	('Alface americana'),
	('Queijo cheddar'),
	('Molho especial'),
	('Cebola'),
	('Picles'),
	('Pão com gergelim'),
	('Ketchup'),
	('Mostarda'),
	('Bacon'),
	('Tomate'),
	('Maionese'),
	('Molho de cheddar cremoso'),
	('Cebola ao molho shoyu'),
	('Pão escuro com gergelim'),
	('Molho tasty'),
	('Pão sem gergelim'),
	('Frango empanado'),
	('Queijo emental'),
	('Pão brioche com batata'),
	('Molho Honey & Fire'),
	('Carne de peito de frango');
    
select * from ingredientes;

CREATE TABLE ingredientes_lanches(
	lancheId      INT,
	ingredienteId INT,
	quantidade    INT NOT NULL,
    
	PRIMARY KEY(lancheId, ingredienteId),
    
	FOREIGN KEY(lancheId)      REFERENCES lanches(lancheId),
	FOREIGN KEY(ingredienteId) REFERENCES ingredientes(ingredienteId)
);

INSERT INTO ingredientes_lanches VALUES
	(1,1,2),
	(1,2,1),
	(1,3,1),
	(1,4,1),
	(1,5,1),
	(1,6,1),
	(1,7,1),
	(2,1,1),
	(2,3,1),
	(2,6,1),
	(2,5,1),
	(2,8,1),
	(2,9,1),
	(2,7,1),
	(3,1,1),
	(3,10,1),
	(3,2,1),
	(3,5,1),
	(3,3,1),
	(3,11,1),
	(3,12,1),
	(3,8,1),
	(3,9,1),
	(3,7,1),
	(4,1,1),
	(4,13,1),
	(4,14,1),
	(4,15,1),
	(5,1,2),
	(5,3,1),
	(5,5,1),
	(5,10,1),
	(5,8,1),
	(5,9,1),
	(5,7,1),
	(6,1,1),
	(6,3,1),
	(6,5,1),
	(6,6,1),
	(6,8,1),
	(6,9,1),
	(6,17,1),
	(7,1,1),
	(7,2,1),
	(7,11,1),
	(7,16,1),
	(7,17,1),
	(8,1,1),
	(8,5,1),
	(8,6,1),
	(8,8,1),
	(8,9,1),
	(8,17,1),
	(9,1,1),
	(9,19,1),
	(9,11,1),
	(9,2,1),
	(9,5,1),
	(9,16,1),
	(9,7,1),
	(10,18,1),
	(10,12,1),
	(10,2,1),
	(10,7,1),
	(11,1,3),
	(11,3,1),
	(11,5,1),
	(11,6,1),
	(11,8,1),
	(11,9,1),
	(11,7,1),
	(12,20,1),
	(12,21,1),
	(12,10,1),
	(12,2,1),
	(12,11,1),
	(12,3,1),
	(12,22,1);
    
select * from ingredientes_lanches;

SELECT 
lanches.lancheId,
lanches.lancheNome,
ingredientes.ingredienteId,
ingredientes.ingredienteNome,
ingredientes_lanches.quantidade
FROM 
lanches 
INNER JOIN 
ingredientes_lanches ON lanches.lancheId = ingredientes_lanches.lancheId
INNER JOIN
ingredientes ON ingredientes.ingredienteId = ingredientes_lanches.ingredienteId;
