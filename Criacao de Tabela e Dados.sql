-- 1. CRIAÇÃO DE TABELA:

create table cliente (
	idcliente integer not null,
	nome varchar(50) not null, 
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30), 
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	
-- varchar pode ser preenchido parcialmente (tamanho variável)
-- char é para campos com tamanhos consistentes (constantes)

-- TODA TABELA PRECISA TER UM IDENTIFICADOR ÚNICO para servir como uma PRIMARY KEY (Identificador único da linha naquela tabela -  pk) !!!!
-- Para criarmos essa restrição: 
	
	constraint pk_cln_idcliente primary key (idcliente)
)


-- 2. PARA INSERIR VALORES NA TABELA:

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '12343299291', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap.', 'Centro', 'P. União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto.', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', 'São Pedro', 'General Carneiro', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileira', 'Av. Beira Mar', '300', 'Ctr.', 'São Paulo', 'SP');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into cliente (idcliente, nome, cpf, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (8, 'Camila', '9998282828', '2001-10-10', 'F', 'Professora', 'Norte americana', 'Rua Central', '4333', 'Centro', 'Uberlância', 'MG');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into cliente (idcliente, nome, cpf, rg, genero, profissao, nacionalidade, municipio, uf)
values (10, 'Fabrício', '8828282828', '32323', 'M', 'Estudante', 'Brasileiro', 'PU', 'SC');

insert into cliente (idcliente, nome, genero, nacionalidade, municipio, uf)
values (11, 'Fernanda', 'F', 'Brasileira', 'Porto União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, logradouro, numero, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', 'Rua das Laranjeiras', '200', 'C. Nova', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (13, 'Diego', '1010191919', '111939', 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'Casa', 'Cidade N.', 'São Paulo', 'SP');

insert into cliente (idcliente, nome, data_nascimento, genero, nacionalidade, municipio, uf)
values (14, 'Jeferson', '1983-07-01', 'M', 'Brasileiro', 'União da Vitória', 'PR');

insert into cliente (idcliente, nome,genero, profissao, municipio, uf)
values (15, 'Jessica','F', 'Estudante', 'União da Vitória', 'PR');









