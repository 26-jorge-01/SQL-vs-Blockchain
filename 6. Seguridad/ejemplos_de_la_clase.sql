-- Inserción de un voto valido
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (1, 1);

-- Inserción de un voto invalido
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (999, 1);

-- Creación de un usuario con acceso limitado
-- Se crea el usuario en el servidor (motor de consulta)
CREATE LOGIN VoterUser WITH PASSWORD = 'SecureP@ss123';
-- Se crea el usuario en la base de datos
CREATE USER VoterUser FOR LOGIN VoterUser;
-- Se otorga solo el permiso de SELECT
GRANT SELECT ON Votos TO VoterUser;

-- Intento de inserción de un voto
EXECUTE AS USER = 'VoterUser';
SELECT * FROM Votos; -- Funciona
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (1, 1); -- Falla
REVERT;

-- Ejemplo de inyección de SQL
DECLARE @Nombre NVARCHAR(50) = 'John''; DROP TABLE Votantes; --';
EXEC('SELECT * FROM Votantes WHERE Nombre = ''' + @Nombre + '''');
-- Este código podría eliminar la tabla 'Votantes'

-- Solución con parametros
DECLARE @NombreSeg NVARCHAR(50) = 'John';
SELECT * FROM Votantes WHERE Nombre = @NombreSeg;

-- Creación de la tabla de auditoria
CREATE TABLE AuditoriaVotos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ID_voto INT,
    Accion VARCHAR(50),
    Fecha DATETIME DEFAULT GETDATE()
);

-- Implementación del activador
CREATE TRIGGER tr_auditoria_votos
ON Votos
AFTER INSERT
AS
BEGIN
    INSERT INTO AuditoriaVotos (ID_voto, Accion)
    SELECT ID, 'Inserción' FROM inserted;
END;

-- Inserción de un voto y revisión de la auditoría
INSERT INTO Votos (ID_votante, ID_candidato) VALUES (1, 1);
SELECT * FROM AuditoriaVotos;
