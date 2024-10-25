-- Se cambia el contexto a la base de datos 'VotingSystem' si no está ya seleccionado
USE VotingSystem;

-- JOIN --
-- Consulta que muestra información de cada voto, incluyendo el nombre del votante y el nombre del candidato
SELECT 
    Votos.ID AS ID_Voto, -- Muestra el ID de cada voto
    Votantes.Nombre AS Nombre_Votante, -- Muestra el nombre del votante asociado al voto
    Candidatos.Nombre AS Nombre_Candidato -- Muestra el nombre del candidato por el que se votó
FROM 
    Votos
INNER JOIN 
    Votantes ON Votos.ID_votante = Votantes.ID -- Une la tabla 'Votos' con 'Votantes' en base al ID del votante
INNER JOIN 
    Candidatos ON Votos.ID_candidato = Candidatos.ID; -- Une la tabla 'Votos' con 'Candidatos' en base al ID del candidato

-- GROUP BY + Agregaciones --
-- Consulta que cuenta cuántos votos ha recibido cada candidato
SELECT 
    Candidatos.Nombre AS Nombre_Candidato, -- Muestra el nombre de cada candidato
    COUNT(Votos.ID) AS Total_Votos -- Cuenta el número total de votos para cada candidato
FROM 
    Votos
INNER JOIN 
    Candidatos ON Votos.ID_candidato = Candidatos.ID -- Une la tabla 'Votos' con 'Candidatos' en base al ID del candidato
GROUP BY 
    Candidatos.Nombre; -- Agrupa los resultados por el nombre de cada candidato
