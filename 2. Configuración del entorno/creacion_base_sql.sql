-- Crea una nueva base de datos llamada 'VotingSystem'
CREATE DATABASE VotingSystem;

-- Cambia el contexto a la base de datos recién creada 'VotingSystem'
USE VotingSystem;

-- Crear tabla Candidatos con autoíndice
CREATE TABLE Candidatos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50)
);

-- Crear tabla Votantes con autoíndice
CREATE TABLE Votantes (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50)
);

-- Crear tabla Votos con autoíndice y claves foráneas
CREATE TABLE Votos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ID_votante INT,
    ID_candidato INT,
    FOREIGN KEY (ID_votante) REFERENCES Votantes(ID),
    FOREIGN KEY (ID_candidato) REFERENCES Candidatos(ID)
);

-- Trae toda la información de la tabla Votos
SELECT * FROM Votos;
