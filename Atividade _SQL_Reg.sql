
CREATE DATABASE BANCO;
USE BANCO;

-- 1. Cria a estrutura da tabela
CREATE TABLE registro (
    Nome VARCHAR(100),
    Idade VARCHAR(10), 
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    CPF VARCHAR(20),
    UF VARCHAR(2),
    CIDADE VARCHAR(50),
    RENDA_MENSAL DECIMAL(10,2),
    VALOR_QUE_DESEJA DECIMAL(15,2)
);

-- 2. Insere os dados
INSERT INTO registro (Nome, Idade, Email, Telefone, CPF, UF, CIDADE, RENDA_MENSAL, VALOR_QUE_DESEJA) VALUES
('joao', '23', 'joaozindugrau244@gmail.com', '61988556565', '456852159', 'DF', 'Brasilia', 1200, 50000),
('ze da manga', '56', 'zeze@gmail.com', '61959598765', '654985321', 'AC', 'ACRE', 900, 90000),
('paulo', '13', 'paulinho@gmail.com', '61944659877', '32265598861', 'SP', 'SAO PAULO', 5000, 50000),
('Biel', '67', 'sixseven@gmail.com', '61967676767', '67676767667', 'SI', 'SIX SEVEN', 6767, 6767676767),
('zeze', '40', 'zezedicavalo@gmail.com', '61985569876', '05544899812', 'DF', 'BRASILIA', 10000, 1000000),
('Luciano', '56', 'lucianodipe@gmail.com', '61955963215', '01223654897', 'DF', 'Brasilia', 50000, 5000000),
('Anonimo', '?', 'anoniminho@gmail.com', '7896562323', '12345678912', 'DF', 'Ceilandia', 20000, 2000000),
('Lulinha', '67', 'lulinha6@gmail.com', '61968779987', '75395145661', 'DF', 'Planalto', 5000, 150000),
('Bolsonaro', '44', 'Bosonaro@gmail.com', '61985562331', '05545698723', 'SC', 'Curitiba', 1000, 6000);

SELECT * FROM registro;

SELECT Nome, Idade
FROM registro;

SELECT distinct Nome, Idade, UF, CPF, Telefone, Cidade, RENDA_MENSAL
FROM registro;


SELECT Nome, CPF, Email
FROM registro;

SELECT MAX(RENDA_MENSAL) AS maior, MIN(VALOR_QUE_DESEJA) AS menor
FROM registro;

SELECT Nome FROM registro
WHERE Nome LIKE 'L%';

SELECT distinct RENDA_MENSAL
FROM registro
ORDER BY RENDA_MENSAL;

SELECT  distinct nome,  RENDA_MENSAL 
FROM registro
ORDER BY  RENDA_MENSAL DESC
LIMIT 3;

SELECT SUM(UF) FROM registro
WHERE UF IN ('DF');

SELECT nome, UF FROM registro
WHERE UF = 'DF' OR UF = 'SC' OR UF = 'SP';

