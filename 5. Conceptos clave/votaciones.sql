-- Se cambia el contexto a la base de datos 'VotingSystem' si no está ya seleccionado
USE VotingSystem;
-- 1 => Alice
-- 2 => Bob

-- Insertar votantes en la tabla 'Votantes'
INSERT INTO Votantes (Nombre) VALUES ('Votante 1');
INSERT INTO Votantes (Nombre) VALUES ('Votante 2');
INSERT INTO Votantes (Nombre) VALUES ('Votante 3');
INSERT INTO Votantes (Nombre) VALUES ('Votante 4');
INSERT INTO Votantes (Nombre) VALUES ('Votante 5');
INSERT INTO Votantes (Nombre) VALUES ('Votante 6');
INSERT INTO Votantes (Nombre) VALUES ('Votante 7');
INSERT INTO Votantes (Nombre) VALUES ('Votante 8');
INSERT INTO Votantes (Nombre) VALUES ('Votante 9');
INSERT INTO Votantes (Nombre) VALUES ('Votante 10');

-- Insertar votos en la tabla 'Votos'
-- Simulamos que cada votante emite un voto a un candidato aleatorio
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (1, 1); -- Votante 1 vota por Alice
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (2, 2); -- Votante 2 vota por Bob
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (3, 2); -- Votante 3 vota por Bob
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (4, 1); -- Votante 4 vota por Alice
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (5, 2); -- Votante 5 vota por Bob
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (6, 1); -- Votante 6 vota por Alice
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (7, 1); -- Votante 7 vota por Alice
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (8, 1); -- Votante 8 vota por Alice
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (9, 2); -- Votante 9 vota por Bob
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (10, 2); -- Votante 10 vota por Bob