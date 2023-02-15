

CREATE TABLE permissoes (
	id int NOT NULL AUTO_INCREMENT, -- Id único do registro da tabela
	nome varchar(60) NOT NULL, -- Deve receber o nome do usuário
	departamento varchar(30) NOT NULL, -- Deve receber o nome do departamento que o usuário está lotado
	leitura boolean NOT NULL DEFAULT true, -- Recebe TRUE se o usuário tiver permissão de leitura ao sistema ou FALSE para contrário
	edicao boolean NOT NULL DEFAULT false, -- Recebe TRUE se o usuário tiver permissão de edição ao sistema ou FALSE para contrário
	master boolean NOT NULL DEFAULT false, -- Recebe TRUE se o usuário tiver permissão master ao sistema ou FALSE para contrário
	sistema varchar(30) NOT NULL, -- Recebe o nome do sistema que o usuário possui as devidas permissões
	criado_em timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Recebe a DATA de criação do registro de acesso
	atualizado_em timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Recebe a DATA da atualização
	PRIMARY KEY (id) -- Define a coluna id como chave da tabela
); -- Cria a tabela


SELECT p.nome, p.sistema  -- Chama apenas AS colunas nome e sistema
FROM permissoes AS p -- Define um alias para a tabela chamada 
WHERE criado_em = current_date() -- Define um filtro, onde vai ser retornado apenas registros criados NO dia da solicitação
ORDER BY p.sistema ASC; -- Ordena o resultado de forma alfabética ascendente, a partir da coluna sistema.




