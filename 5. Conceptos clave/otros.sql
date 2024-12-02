-- 4.1.
SELECT Votantes.Nombre AS NombreVotante, COUNT(Votos.ID_votante) AS TotalVotosEmitidos
FROM Votos
INNER JOIN Votantes ON Votos.ID_votante = Votantes.ID
GROUP BY Votantes.Nombre;

-- 4.2.
SELECT Candidatos.Nombre AS NombreCandidato,
       COUNT(Votos.ID_candidato) * 100.0 / (SELECT COUNT(*) FROM Votos) AS PorcentajeVotos
FROM Votos
INNER JOIN Candidatos ON Votos.ID_candidato = Candidatos.ID
GROUP BY Candidatos.Nombre;

-- 4.3.
SELECT 
    (SELECT COUNT(*) FROM Votos) AS TotalVotos,
    (SELECT AVG(TotalVotos) 
     FROM (SELECT COUNT(*) AS TotalVotos 
           FROM Votos 
           GROUP BY ID_candidato) AS Subconsulta) AS PromedioVotosPorCandidato,
    (SELECT COUNT(DISTINCT ID_votante) FROM Votos) AS TotalVotantes;
