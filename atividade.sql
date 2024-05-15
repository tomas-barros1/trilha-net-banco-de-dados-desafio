--Questao 1
SELECT Nome, Ano FROM Filmes;

--Questao 2
SELECT Nome, Ano FROM Filmes ORDER BY ANO;

--Questao 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--Questao 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

--Questao 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

--Questao 6
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY Duracao;

--Questao 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano;

--Questao 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

--Questao 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--Questao 10
SELECT 
    Filmes.Nome,
    Generos.Genero
FROM 
    Filmes
JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id;

--Questao 11
SELECT 
    Filmes.Nome,
    Generos.Genero
FROM 
    Filmes
JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';

--Questao 12
SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM 
    Filmes
JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;
