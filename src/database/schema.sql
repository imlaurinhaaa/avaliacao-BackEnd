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
(5, 'Giovanna Alba', 'Concluído', 'Finalizar tabela de produtos');

-- INSERTS PARA PROVA DE FRONTEND: com foto
INSERT INTO tarefas (projeto_id, name, status_tarefa, description) VALUES 
(1, 'Amanda', 'Concluído', 'Implementar rotas protegidas na API'),
(5, 'Enzo', 'Em andamento', 'Normalizar tabelas e revisar chaves estrangeiras'),
(2, 'Giovanna', 'Em andamento', 'Refatorar layout da página de contato'),
(4, 'João Vitor', 'Em andamento', 'Integrar notificações push no aplicativo')
(1, 'Luana', 'Em andamento', 'Implementar middleware de autenticação'),
(5, 'Samuel', 'Em andamento', 'Otimizar consultas com índices compostos'),
(2, 'Ana Julia', 'Pendente', 'Criar animações com Framer Motion'),
(4, 'Caio', 'Pendente', 'Publicar app na Play Store'),
(1, 'Flavia', 'Pendente', 'Criar serviço de envio de e-mails pela API'),
(5, 'Julia', 'Pendente', 'Criar procedures para geração de relatórios'),
(3, 'Raphaelle', 'Pendente', 'Revisar backlog e dividir tarefas da equipe'),
(6, 'Sara', 'Pendente', 'Finalizar ícones e tipografia do design system'),
(3, 'André', 'Concluído', 'Preparar apresentação final do projeto completo'),
(6, 'Fernanda', 'Concluído', 'Criar protótipos de alta fidelidade no Figma'),
(3, 'Isabella', 'Concluído', 'Organizar documentação técnica do projeto final'),
(6, 'Kevin', 'Concluído', 'Desenvolver paleta de cores para o produto digital'),
(2, 'Luiz Henrique', 'Concluído', 'Criar seção de depoimentos responsiva'),
(4, 'Pablo', 'Concluído', 'Testar funcionalidades no Android e iOS'),
(1, 'Bernardo', 'Concluído', 'Criar endpoint para atualização de senha'),
(1, 'Ana Leme', 'Pendente', 'Adicionar logs de erro no servidor'),
(4, 'Anna', 'Pendente', 'Adaptar layout para tablets'),
(2, 'Camila', 'Pendente', 'Ajustar espaçamento entre seções da página inicial'),
(5, 'Fabio', 'Pendente', 'Revisar relacionamentos entre tabelas no banco de dados'),
(2, 'Gabriela', 'Concluído', 'Implementar carrossel de imagens na página inicial'),
(5, 'Guilherme', 'Concluído', 'Criar views para relatórios mensais'),
(1, 'Julia Guarnieri', 'Concluído', 'Criar API RESTful para gerenciamento de produtos'),
(4, 'Lucas', 'Concluído', 'Publicar nova versão do app com correções de bugs'),
(3, 'Maria', 'Em andamento', 'Realizar checklist de entregas do projeto'),
(6, 'Natalia', 'Em andamento', 'Refinar estilo dos botões e campos de formulário'), 
(3, 'Richard', 'Em andamento', 'Atualizar cronograma no Trello e repassar com o time'),
(6, 'Vitor', 'Em andamento', 'Aplicar testes de contraste e legibilidade no protótipo'),
(1, 'Nicolly', 'Pendente', 'Integrar API com serviço externo de pagamentos'),
(2, 'Aline', 'Em andamento', 'Corrigir responsividade da página de login'),
(4, 'Leticia', 'Pendente', 'Implementar autenticação por biometria no app');

-- INSERTS PARA PROVA DE BACKEND: sem foto
INSERT INTO tarefas (projeto_id, name, status_tarefa, description) VALUES 
(1, 'Renan Azevedo', 'Concluído', 'Configurar autenticação com OAuth2'),
(1, 'Juliana Brito', 'Pendente', 'Criar logs detalhados para auditoria'),
(1, 'Paulo Sérgio', 'Em andamento', 'Refatorar rotas privadas com middleware'),
(1, 'Camila Moura', 'Concluído', 'Criar endpoint de exportação de dados'),
(1, 'Mauro Oliveira', 'Pendente', 'Documentar API no Swagger'),
(1, 'Lígia Santos', 'Em andamento', 'Testar integração com banco MongoDB'),
(1, 'Andressa Lopes', 'Concluído', 'Implementar estratégia de refresh token'),
(1, 'Vinícius Campos', 'Em andamento', 'Criar endpoint para reset de senha'),
(1, 'Tatiane Alves', 'Pendente', 'Validar payloads com biblioteca Joi'),
(1, 'Diego Mattos', 'Concluído', 'Realizar testes automatizados com Jest'),
(2, 'Patrícia Silva', 'Pendente', 'Ajustar cores para dark mode'),
(2, 'João Pedro Cruz', 'Em andamento', 'Desenvolver componente de alerta global'),
(2, 'Carla Mendes', 'Concluído', 'Refatorar layout da página de checkout'),
(2, 'Letícia Oliveira', 'Pendente', 'Criar animações em CSS para o banner'),
(2, 'Caio Bastos', 'Concluído', 'Finalizar tela de perfil do usuário'),
(2, 'Aline Figueiredo', 'Em andamento', 'Reestruturar navegação mobile'),
(2, 'Rafael Augusto', 'Pendente', 'Implementar menu hamburguer animado'),
(2, 'Fernanda Ribeiro', 'Concluído', 'Corrigir layout quebrado no Safari'),
(2, 'Suelen Marques', 'Em andamento', 'Aplicar estilização com TailwindCSS'),
(2, 'Bruno Santos', 'Pendente', 'Responsividade do formulário de contato'),
(3, 'Thais Rocha', 'Concluído', 'Montar checklist das entregas finais'),
(3, 'Lucas Barbosa', 'Pendente', 'Criar plano de contingência para bugs'),
(3, 'Eduarda Leite', 'Em andamento', 'Revisar kanban e dividir novas tarefas'),
(3, 'Matheus Ferreira', 'Concluído', 'Organizar pasta de assets do projeto'),
(3, 'Jéssica Costa', 'Pendente', 'Criar modelo de ata de reunião'),
(3, 'Gabriel Souza', 'Em andamento', 'Atualizar metas da sprint no Jira'),
(3, 'Ana Beatriz Lima', 'Pendente', 'Compilar feedbacks da revisão de código'),
(3, 'Rodolfo Andrade', 'Concluído', 'Conferir documentação final no Notion'),
(3, 'Fábio Menezes', 'Em andamento', 'Apresentar overview do projeto para stakeholders'),
(3, 'Natália Vasconcelos', 'Pendente', 'Enviar e-mail com link da apresentação'),
(4, 'Luana Martins', 'Pendente', 'Ajustar permissões no app mobile'),
(4, 'Eduardo Paiva', 'Em andamento', 'Conectar app à API de localização'),
(4, 'Vanessa Moura', 'Concluído', 'Publicar nova versão do app na App Store'),
(4, 'Daniel Moreira', 'Em andamento', 'Implementar scanner de QR Code'),
(4, 'Luciana Rocha', 'Pendente', 'Criar tela de configurações do app'),
(4, 'Samuel Costa', 'Concluído', 'Corrigir bug no login com Facebook'),
(4, 'Priscila Souza', 'Pendente', 'Testar layout em dispositivos pequenos'),
(4, 'Felipe Tavares', 'Em andamento', 'Criar splash screen animada'),
(4, 'Yasmin Nogueira', 'Concluído', 'Substituir ícones para versão 2.0'),
(4, 'Andréa Dias', 'Em andamento', 'Revisar navegação entre telas'),
(5, 'Mariana Figueira', 'Concluído', 'Criar stored procedure para limpeza de dados'),
(5, 'Wagner Lopes', 'Pendente', 'Revisar integridade referencial entre tabelas'),
(5, 'Bianca Sales', 'Em andamento', 'Mapear queries lentas para otimização'),
(5, 'Jorge Menezes', 'Pendente', 'Configurar backup automático diário'),
(5, 'Isabel Correia', 'Concluído', 'Criar índices para tabelas de acesso'),
(5, 'Roberto Lima', 'Em andamento', 'Atualizar diagrama ER com novas tabelas'),
(5, 'Daniele Fonseca', 'Pendente', 'Revisar normalização até 3FN'),
(5, 'Gustavo Pires', 'Em andamento', 'Criar triggers para atualizações em cascata'),
(5, 'Kelly Santos', 'Concluído', 'Migrar dados do ambiente de homologação'),
(5, 'Leonardo Queiroz', 'Pendente', 'Testar restore a partir de backup'),
(6, 'Ariane Silveira', 'Concluído', 'Criar guia de estilo com variações de botão'),
(6, 'Vitor Hugo Duarte', 'Pendente', 'Definir tipografia principal do app'),
(6, 'Elaine Borges', 'Em andamento', 'Desenvolver ícones personalizados em SVG'),
(6, 'Cristina Neves', 'Pendente', 'Finalizar telas com grid de produtos'),
(6, 'Thiago Pinto', 'Concluído', 'Ajustar espaçamentos e paddings do protótipo'),
(6, 'Rebeca Andrade', 'Em andamento', 'Aplicar feedback visual da equipe de UX'),
(6, 'Alberto Almeida', 'Pendente', 'Criar design para o modo escuro'),
(6, 'Juliane Duarte', 'Concluído', 'Revisar contraste de cores para acessibilidade'),
(6, 'Hugo Santana', 'Em andamento', 'Padronizar estilos de títulos e subtítulos'),
(6, 'Paula Xavier', 'Pendente', 'Organizar pastas e arquivos no Figma');


INSERT INTO projetos (project, teacher) VALUES 
('Backend', 'Thiago Ferreira'),
('Frontend', 'Marcelo Carboni'),
('Projetos', 'Thiago Ferreira e Marcelo Carboni'),
('Mobile', 'Marcelo Carboni'),
('Banco de Dados', 'Thiago Ferreira'),
('Design', 'Marcelo Carboni');