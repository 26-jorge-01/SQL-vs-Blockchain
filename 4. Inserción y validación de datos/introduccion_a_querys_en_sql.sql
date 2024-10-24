-- Candidatos que podrán ser elegidos
INSERT INTO Candidatos (Nombre) VALUES ('Alice');
INSERT INTO Candidatos (Nombre) VALUES ('Bob');

-- Tipos de datos
INSERT INTO Candidatos (Nombre) VALUES (123); -- ¿Qué pasa? ¿Se inserta o no?

-- Votantes
INSERT INTO Votantes (Nombre) VALUES ('Juan');

-- Registro de los votos
INSERT INTO Votos (ID_candidato, ID_votante) VALUES (1, 1);
INSERT INTO Votos (ID_candidato, ID_votante) VALUES (5, 10); -- ¿Qué pasa? ¿Se inserta o no?

-- Consultar información a partir de filtros
-- Todos los registros de una tabla
SELECT * FROM Candidatos;

-- Registros que cumplen una condición especifica
SELECT ID, Nombre FROM Candidatos where ID != 1;

-- Eliminación de registros
DELETE FROM Candidatos WHERE Nombre='123';