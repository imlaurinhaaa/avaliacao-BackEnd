CREATE DATABASE adm_projetos;

\c adm_projetos;

CREATE TABLE tarefas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    photo TEXT,
    status_tarefa VARCHAR(255),
    description VARCHAR(300)
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    tarefa_id INTEGER NOT NULL REFERENCES tarefas(id) ON DELETE CASCADE,
    project VARCHAR(255)
);

INSERT INTO tarefas (name, status_tarefa, description) VALUES 
('Laura Violla', 'Em andamento', 'Realizar CRUD completo da API de Usuários'),
('Bruna Savelli', 'Pendente', 'Finalizar Footer do site Doçuras da Mama'),
('Evelyn Oliveira', 'Em andamento', 'Realizar documentação do projeto'),
('Ana Carolina Freitas', 'Concluído', 'Realizar página de Login do Usuário'),
('Alejandra Barros', 'Pendente', 'Finalizar o Swagger da API de Harry Potter');

INSERT INTO projetos (tarefa_id, project) VALUES 
(1, 'Backend'),
(2, 'Frontend'),
(3, 'Projetos'),
(4, 'Mobile'),
(5, 'Backend');