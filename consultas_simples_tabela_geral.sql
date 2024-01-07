-- AULA : CONSULTAS SIMPLES

-- Para selecionar todos os valores da tabela cliente:
select * from cliente;

-- Selecionas apenas nome e data_nascimento da tabela cliente:
select nome, data_nascimento from cliente;

-- Para renomear uma coluna para a VISUALIZAÇÃO da tabela (apenas visualização, é um apelido e não uma edição real do nome da coluna - usar aspas dupla):
select nome, data_nascimento as "Data de nascimento" from cliente;

-- Para realizar uma concatenação do texto CPF com seu valor e de RG com seu valor em uma nova coluna "CPF e RG" para a VISUALIZAÇÃO dos:
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

-- Para selecionar os dados com um limite de quantidade (sempre contado a partir da ordem da tabela):
select * from cliente limit 3;

-- Filtro data (condição "onde" [where])
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

-- Filtro com intervalo expresso de datas
select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

-- Filtro pela letra inicial (like -> "como", "=". Para adicionar mais letras a serem consideradas, adicionar a %)
select nome from cliente where nome like 'C%';

-- Filtro pela letra sem ser a inicial
select nome from cliente where nome like '%c%';

-- Filtro por valor nulo (utiliza-se o is e não o like porque o null é um valor inexistente, portanto, não atingiria a igualdade)
select nome, rg from cliente where rg is null;

-- Filtrar por ordenação crescente
select nome from cliente order by nome asc;

-- Filtrar por ordem descrescente
select nome from cliente order by nome desc; 







-- EXERCÍCIOS: CONSULTAS SIMPLES

--1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
SELECT nome, genero, profissao FROM cliente ORDER BY nome DESC;

--2. Os clientes que tenham a letra “R” no nome
select nome from cliente where nome like '%r%';

--3. Os clientes que o nome inicia com a letra “C”
select nome from cliente where nome like 'C%';

--4. Os clientes que o nome termina com a letra “A”
select nome from cliente where nome like '%a';

--5. Os clientes que moram no bairro “Centro”
select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.';

--6. Os clientes que moram em complementos que iniciam com a letra “A”
select nome, complemento from cliente where complemento like 'A%';

--7. Somente os clientes do sexo feminino
select nome, genero from cliente where genero like 'F';

--8. Os clientes que não informaram o CPF
select nome, cpf from cliente where cpf is null;

--9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
select nome, profissao from cliente order by profissao asc;

--10. Os clientes de nacionalidade “Brasileira” e "Brasileiro"
select nome, nacionalidade from cliente where nacionalidade like 'Brasileir%';

--11. Os clientes que informaram o número da residência (?????)
select nome, numero from cliente where numero is not null;

--12. Os clientes que moram em Santa Catarina
select nome, uf from cliente where uf like 'SC';

--13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

--14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
--ATENÇÃO: se algum dos elementos é null ele não consegue contatenar e por isso o valor inteiro da linha vem "null"
select nome || ', '|| logradouro || ', N.'|| numero || ', '|| complemento|| ', Bairro: '|| bairro || ', '|| municipio || ', '|| uf || '.' as "Dados completos" from cliente;





