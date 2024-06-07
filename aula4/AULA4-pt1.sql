-- DML --> MANIPULA REGISTROS

-- Colunas Nome, Idade e codigo_armario
INSERT INTO PROFESSOR (NOME, IDADE, CODIGO_ARMARIO)
	VALUES ('André', 26, 'TOMAS1');

INSERT INTO PROFESSOR (NOME, CODIGO_ARMARIO)
	VALUES ('Anderson', 'ArminhosFernades1123');

INSERT INTO PROFESSOR (NOME, IDADE, CODIGO_ARMARIO)
	VALUES ('Felipe', 31, 'ArminhosFernades122133');
INSERT INTO PROFESSOR (NOME, IDADE, CODIGO_ARMARIO)
	VALUES ('Filomeno', 33, 'Fernandes12');


INSERT INTO PROFESSOR (NOME, IDADE, CODIGO_ARMARIO)
	VALUES ('AUREN', 1, 'A22'),
	('ANNA', NULL, 'A32'),
	('AMARUI', NULL, 'A133');

--      TABELA 	      VALORES
UPDATE PROFESSOR SET NOME='Joana' WHERE ID = 2;
UPDATE PROFESSOR SET NOME='Mourinha' WHERE IDADE <= 2;

UPDATE PROFESSOR SET NOME='MÁXIMILANO 22' 
	WHERE IDADE >= 31
	AND CODIGO_ARMARIO LIKE 'Fernandes%'; -- para dar TRUE eu apenas preciso que o código armario tenha como parte do valor Fernandes
	-- Like é para strings parciais
	-- os % indicam a continuidade da string, ou seja, se tem algum conteúdo extra



UPDATE PROFESSOR 
	SET NOME='Maluco no pedaço', IDADE = 27 
	WHERE IDADE = 26	
	OR CODIGO_ARMARIO != 'QUALQUER COISA'; -- CODIGO IGUAL A QUALQUER COISA
-- != com itens diferentes retorna true 


DELETE FROM PROFESSOR 


	
SELECT * FROM PROFESSOR;

	-- ORDER BY ORDENA A VISUALIZAÇÃO POR UM CAMPO
	-- ASC -> ASCENDENTE
	-- DESC -> DESCENDENTE
SELECT ID identificador ,NOME nome_professor FROM PROFESSOR ORDER BY ID DESC;

-- AS define um apelido/renomeia para a coluna no select, não muda a tabela orginal
-- o AS é opcional

SELECT * FROM PROFESSOR	WHERE IDADE IS NULL; -- PARA VALIDAR SE É NULL USAMOS O 'IS'



SELECT Distinct pf.Idade, PF.nome FROM PROFESSOR PF WHERE PF.ID > 2;
-- distinct traz todos os dados sem repetições
-- distinção por idade e nome e vai filtra por todas as idades maiores que 2
-- PF é um alias dentro do comando que usamos para identificar as colunas de uma tabela, esse alias é opcional em operações com uma tabela, ele só existe dentro do comando


SELECT pf.Idade FROM PROFESSOR PF WHERE PF.ID > 2;



