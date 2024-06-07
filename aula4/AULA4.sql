CREATE TABLE MATERIA(
	ID SERIAL PRIMARY KEY,
	NOME_MATERIA VARCHAR(50),
	PROFESSOR_ID INT REFERENCES PROFESSOR(ID)
);

INSERT INTO public.materia(
	nome_materia, professor_id)
	VALUES ('Algebra', 24);	

INSERT INTO public.materia(
	nome_materia)
	VALUES ('Portugues');	

INSERT INTO public.aluno(
	nome, ano_escolar)
	VALUES ('Everton', 1),
	('Evei', 2),
	('Ernesto', 3),
	('Eustaquio', 1)
	;

INSERT INTO nota(
	professor_id, aluno_id, nota)
	VALUES (24, 1, 9.15);

SELECT * FROM PROFESSOR;
SELECT * FROM ALUNO;
SELECT * FROM NOTA;
SELECT * FROM Materia;

-- SELECIONE A TABELA NOTA
-- REALIZE UMA UNIÃO ONDE O RESULTADO É A INTERSECÇÃO DOS VALORES DOS IDS SÃO IGUAIS 
SELECT * FROM NOTA N
INNER JOIN ALUNO A ON N.aluno_id = A.ID;

-- UMA TABELA CUSTOMIZADA PARA O JOIN
SELECT N.nota NOTA, A.nome NOME_ALUNO, PF.nome NOME_PROFESSOR FROM NOTA N
	INNER JOIN ALUNO A ON N.aluno_id = A.ID -- JUNTANDO AS LINHAS ONDE OS IDS SÃO IGUAIS
	INNER JOIN PROFESSOR PF ON N.professor_id = PF.ID; 
	;

SELECT * FROM NOTA N
	INNER JOIN ALUNO A ON N.aluno_id = A.ID 
	INNER JOIN PROFESSOR PF ON N.professor_id = PF.ID; 
	;

SELECT * FROM MATERIA MA
	INNER JOIN PROFESSOR PF ON MA.professor_id = PF.id
	;
--INNER JOIN apenas traz as linhas que tiverem tanto a MATERIA quanto o PROFESSOR correspondentes, não traz linhas sem relacionamento ()


SELECT * FROM MATERIA MA
	LEFT JOIN PROFESSOR PF ON MA.professor_id = PF.id
	;
-- LEFT JOIN Junta todos os dados de Materia e adiciona os dados de professor quando existir o realcionamento
