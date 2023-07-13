-- I. OBEJTIVO:

-- 1º. Primeiro criamos uma tabelas "Clientes" com todos os dados
-- 2º. Separamos as coluinas "bairro", "complemento", "nacionalidade" e "profissão" em nova tabelas
--    Nessas novas tabelas criamos os valores, sem repetições, com seus ids.
-- 3º. Agora iremos alterar na tabela "Cilentes" os valores dessas colunas pelos ids de seus valores
--     Com isso, relacionamos a chave primária da informação em outras tabelas em chave estrangeira
--     na tabela de cliente. Isso possibilitará a comunicação entre as tabelas.



-- II. MAPEAR OS IDS QUE UTILIZAM CADA VALOR - PROFISSAO

select idcliente, profissao from cliente;
-- verificar as diferentes profissões na tabela para detectar as variações de uma mesma profissão

select idcliente, profissao from cliente where profissao like 'Estu%';
-- pesquisar por uma forma que contemplaria todas as diferentes formas de escrita de uma profissão

-- Estudante -> usuários de id 1,9,10,12,15,17
-- Engenheiro -> usuário de id 2
-- Pedreiro ->    //        id 3
-- Jornalista ->  //        id 4, 5
-- Professor ->   //        id 6, 7, 8, 13
-- Null ->        //        id 11, 14


-- III. EXCLUSÃO E SUBSTITUIÇÃO DE VALORES

-- As colunas que iremos substituir são de tipo varchar e para inserir o id precisamos alterar o tipo
-- da coluna para inteiro.
-- Porém, como já possuem dados, o banco não aceita mais a alteração de tipo da coluna. 
-- Então, será necessário excluir a coluna e recriá-la de novo com um novo tipo. 

-- TIPOS DE EXCLUSÃO:
-- DELETE -> Exclui linhas da tabela. Tem que utilizar com WHERE para não apagar todos os valores
--           Após a operação precisa realizar um commit para confirmar a ação ou um rollback para reverter.
--           com sua ação, dispara o triggers associados a exclusão.
-- TRUNCATE-> Remove todas as linhas de uma tabela
--            A ação não pode ser revertida
--            Não dispara nenhum trigger associado a exclusão
-- DROP -> Usado para excluir estruturas da tabela. Ou colunas em específico ou a tabela como um todo.
--         Índices e privilégios também são removidos.
--         Não a retorno da ação caso necessário. 



alter table cliente drop profissao;
-- exclusão da coluna

alter table cliente add idprofissao integer;
-- criação de nova coluna com tipo inteiro







select * from cliente
