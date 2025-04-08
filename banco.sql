-- Listagen de todas as pessoas em ordem alfabética pelo nome
SELECT * 
FROM pessoas
ORDER BY nome ASC;

-- Pessoas com idade entre 20 e 60 anos
SELECT * 
FROM pessoas
WHERE idade BETWEEN 20 AND 60;

--  Pessoas que não possuem CPF
-- Aqui estamos procurando pessoas que não têm um documento do tipo CPF
SELECT p.* 
FROM pessoas p
LEFT JOIN documentos d ON p.id = d.pessoa_id AND d.tipo = 'CPF'
WHERE d.tipo IS NULL;

--  Pessoas com sobrenome 'Soares'
-- Aqui usamos o LIKE pra pegar qualquer pessoa cujo nome termina ou contém 'Soares'
SELECT * 
FROM pessoas
WHERE nome LIKE '%Soares%';

--  Listar todos os tipos de documentos (sem repetir)
SELECT DISTINCT tipo 
FROM documentos;
