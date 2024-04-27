USE Filmes;
--  1
SELECT Nome,
       Ano
  FROM Filmes;

-- 2
SELECT Nome,
       Ano,
	   Duracao
  FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome,
       Ano,
	   Duracao
  FROM Filmes
 WHERE UPPER(Nome) like '%DE VOLTA PARA O FUTURO%';

-- 4
SELECT Nome,
       Ano,
	   Duracao
  FROM Filmes
 WHERE Ano = 1997;

-- 5 
SELECT Nome,
       Ano,
	   Duracao
  FROM Filmes
 WHERE Ano > 2000;


 -- 6 
 SELECT Nome,
       Ano,
	   Duracao
  FROM Filmes
 WHERE Duracao > 100 
   AND Duracao < 150
 ORDER BY Duracao;

 -- 7
 SELECT Ano,
		COUNT(1) Quantidade
   FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT PrimeiroNome,
       UltimoNome,
	   Genero
  FROM Atores
 WHERE Genero = 'M'

 -- 9
 SELECT PrimeiroNome,
       UltimoNome,
	   Genero
  FROM Atores
 WHERE Genero = 'F'
ORDER BY PrimeiroNome 

-- 10
SELECT F.Nome,
       G.Genero
  FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11
SELECT F.Nome,
       G.Genero
  FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
 WHERE UPPER(G.Genero) like '%MISTÉRIO%'

-- 12
SELECT F.Nome,
       A.PrimeiroNome,
	   A.UltimoNome,
	   EF.Papel
  FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor