-- Taller en clase
-- 1. Inssertar datos en las tablas de votos, candidatos y votantes
-- (Recordar que para registrar un voto se debe tener definido al votante y al candidato)

-- 2. Ejercicios con funciones de agregación
-- 2.1. Contar votos totales
SELECT COUNT(*) AS TotalVotos FROM Votos;

-- 2.2. Contar votos por candidato
SELECT ID_candidato, COUNT(*) AS TotalVotos
FROM Votos
GROUP BY ID_candidato;

-- 2.3. Obtener al candidato con más votos
SELECT TOP 1 ID_candidato, COUNT(*) AS TotalVotos
FROM Votos
GROUP BY ID_candidato
ORDER BY TotalVotos DESC;

-- 2.4. Promedio de votos por candidato
SELECT AVG(TotalVotos) AS PromedioVotos
FROM (
    SELECT ID_candidato, COUNT(*) AS TotalVotos
    FROM Votos
    GROUP BY ID_candidato
) AS Subconsulta;

-- 3. Ejercicios con relaciones
-- 3.1. Votos por candidato con nombre
SELECT Candidatos.Nombre AS NombreCandidato, COUNT(Votos.ID_candidato) AS TotalVotos
FROM Votos
INNER JOIN Candidatos ON Votos.ID_candidato = Candidatos.ID
GROUP BY Candidatos.Nombre;
-- 3.2. Candidatos con más de un voto
SELECT Candidatos.Nombre AS NombreCandidato, COUNT(Votos.ID_candidato) AS TotalVotos
FROM Votos
INNER JOIN Candidatos ON Votos.ID_candidato = Candidatos.ID
GROUP BY Candidatos.Nombre
HAVING COUNT(Votos.ID_candidato) > 1;

-- 4. Construcción del reporte preliminar de votos
-- 4.1. ¿Cuántos votos emitió cada votante? (Agrupar por votante)
-- 4.2. ¿Cuál es el porcentaje de votos que recibió cada candidato en relación con el total de votos? (Usar subconsultas para calcular el porcentaje)
-- 4.3. Mostrar el total de votos emitidos, el promedio de votos por candidato, y el número de votantes que emitieron votos.