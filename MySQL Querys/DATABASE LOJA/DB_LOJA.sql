-- 1 - Liste todos os relógios ordenados pela data em que foram cadastrados;
SELECT * FROM TB_PRODUTOS WHERE PRO_CATEGORIA='RELÓGIOS' ORDER BY PRO_DATA;

-- 2 - Liste, ordenando do menor para o maior valor, todos os produtos que estão disponíveis;
SELECT * FROM TB_PRODUTOS WHERE PRO_DISPONIVEL=TRUE ORDER BY PRO_PRECO asc;

-- 3 - Liste o nome, o preço e a quantidade de todas as TVs que estão disponíveis;
SELECT PRO_NOME,PRO_PRECO,PRO_QUANTIDADE FROM TB_PRODUTOS WHERE PRO_CATEGORIA='TVs' AND PRO_DISPONIVEL=TRUE; 

-- 4 - Liste ordenando pelo nome, todos os produtos com menos de 10 unidades em estoque;
SELECT * FROM TB_PRODUTOS WHERE PRO_QUANTIDADE<10 ORDER BY PRO_NOME;

-- 5 - Liste todos os relógios que começam com a letra 'S';
SELECT * FROM TB_PRODUTOS WHERE PRO_CATEGORIA='RELÓGIOS' AND PRO_NOME LIKE 's%';

-- 6 - Liste os 10 produtos mais caros;
SELECT * FROM TB_PRODUTOS ORDER BY PRO_PRECO DESC LIMIT 10;

-- 7 - Liste os 10 produtos mais baratos;
SELECT * FROM TB_PRODUTOS ORDER BY PRO_PRECO ASC LIMIT 10;

-- 8 - Liste o nome de todas as categorias com produtos cadastrados;
SELECT DISTINCT PRO_CATEGORIA FROM TB_PRODUTOS;

-- 9 - Liste todos os produtos cadastrados a partir de 01/01/2021;
SELECT * FROM TB_PRODUTOS WHERE PRO_DATA>2021-01-01;

-- 10 - Liste todos os produtos cadastrados no ano de 2022, ordenados pela data;
SELECT * FROM TB_PRODUTOS WHERE PRO_DATA LIKE '2022%' ORDER BY PRO_DATA;

-- 11 - Liste todos os produtos agrupados por categorias;
SELECT * FROM TB_PRODUTOS ORDER BY PRO_CATEGORIA;

-- 12 - Liste todos os produtos das categorias 'Game' e 'TVs';
SELECT * FROM TB_PRODUTOS WHERE PRO_CATEGORIA='GAME' OR PRO_CATEGORIA='TVs';

-- 13 - Liste todos os produtos que contenham a letra 'C' no nome;
SELECT * FROM TB_PRODUTOS WHERE PRO_NOME LIKE '%c%';

-- 14 - Liste todos os produtos com valores entre 200 e 400 reais dos produtos;
SELECT * FROM TB_PRODUTOS WHERE PRO_PRECO BETWEEN 200 AND 400;

-- 15 - Liste os produtos das categorias 'Informática' ou 'Game', preço de 100 a 400 e cadastrados em 2022, ordenados de forma ascendente pela data.
SELECT * FROM TB_PRODUTOS WHERE PRO_CATEGORIA IN ('GAME','INFORMÁTICA') AND PRO_PRECO BETWEEN 100 AND 400 AND PRO_DATA LIKE '2022%' ORDER BY PRO_DATA ASC;
