-- Crea una nueva base de datos llamada 'VotingSystem'
CREATE DATABASE VotingSystem;

-- Cambia el contexto a la base de datos recién creada 'VotingSystem'
USE VotingSystem;

-- Crea una tabla llamada 'Votes' en la base de datos 'VotingSystem'
CREATE TABLE Votes (
    id INT PRIMARY KEY IDENTITY,           -- 'id': columna de tipo entero (INT), actúa como clave primaria. 
                                           -- Utiliza 'IDENTITY' para que se incremente automáticamente con cada nueva fila.
    voter_id VARCHAR(255) NOT NULL,        -- 'voter_id': columna de tipo cadena de texto (VARCHAR) con un límite de 255 caracteres.
                                           -- Almacena la identificación del votante. La columna es obligatoria (NOT NULL).
    candidate VARCHAR(255) NOT NULL,       -- 'candidate': columna de tipo cadena de texto (VARCHAR) con un límite de 255 caracteres.
                                           -- Almacena el nombre del candidato por el cual el votante ha votado. Es obligatoria (NOT NULL).
    timestamp DATETIME DEFAULT GETDATE()   -- 'timestamp': columna de tipo fecha y hora (DATETIME). 
                                           -- Almacena la fecha y hora en que se registró el voto. Tiene un valor por defecto (DEFAULT) 
                                           -- que usa la fecha y hora actual del sistema (`GETDATE()`).
);

-- "Trae toda la informacion de la tabla Votes"
SELECT * FROM Votes;