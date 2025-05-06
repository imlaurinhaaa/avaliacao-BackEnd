CREATE DATABASE adm_projetos;

\c adm_projetos;

-- Entidade 2
CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    project VARCHAR(255),
    teacher VARCHAR(255)
);

-- Entidade 1
CREATE TABLE tarefas (
    id SERIAL PRIMARY KEY,
    projeto_id INTEGER NOT NULL REFERENCES projetos(id) ON DELETE CASCADE,
    name VARCHAR(255),
    photo TEXT,
    status_tarefa VARCHAR(255),
    description VARCHAR(300)
);

INSERT INTO tarefas (projeto_id, name, status_tarefa, description) VALUES 
(1, 'Laura Violla', 'Em andamento', 'Realizar CRUD completo da API de Usuários'),
(2, 'Bruna Savelli',  'Pendente', 'Finalizar Footer do site Doçuras de Paris'),
(3, 'Evelyn Oliveira', 'Em andamento', 'Realizar documentação do projeto'),
(4, 'Ana Carolina Freitas', 'Concluído', 'Realizar página de Login do Usuário'),
(1, 'Alejandra Barros', 'Pendente', 'Finalizar o Swagger da API de Harry Potter'),
(5, 'Giovanna Alba', 'Concluído', 'Finalizar tabela de produtos')

INSERT INTO projetos (project, teacher) VALUES 
('Backend', 'Thiago Ferreira'),
('Frontend', 'Marcelo Carboni'),
('Projetos', 'Thiago Ferreira e Marcelo Carboni'),
('Mobile', 'Marcelo Carboni'),
('Banco de Dados', 'Thiago Ferreira'),
('Design', 'Marcelo Carboni');