-- Crea una nueva base de datos llamada 'VotingSystem'
CREATE DATABASE VotingSystem;

-- Cambia el contexto a la base de datos recién creada 'VotingSystem'
USE VotingSystem;

CREATE TABLE Candidatos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Votantes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Votos (
    ID INT PRIMARY KEY,
    ID_votante INT,
    ID_candidato INT,
    FOREIGN KEY (ID_votante) REFERENCES Votantes(ID),
    FOREIGN KEY (ID_candidato) REFERENCES Candidatos(ID)
);

-- "Trae toda la informacion de la tabla Votes"
SELECT * FROM Votos;