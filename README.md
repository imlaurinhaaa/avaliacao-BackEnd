# ADM Projetos API 📌

Esta é a API ADM Projetos, que permite gerenciar tarefas e projetos. A API fornece endpoints para criar, atualizar, excluir e listar informações sobre as tarefas e projetos.

## Endpoints

### Tarefas 📑
- **GET /tarefas**: Retorna todas as tarefas.
  - Parâmetro opcional: `?status_tarefa=<valor>` para filtrar por status das tarefas.
- **POST /tarefas**: Cria uma nova tarefa.
- **PUT /tarefas/:id**: Atualiza uma tarefa existente.
- **DELETE /tarefas/:id**: Exclui uma tarefa.

### Projetos 💻
- **GET /projetos**: Retorna todos os projetos.
- **POST /projetos**: Cria um novo projeto.
- **PUT /projetos/:id**: Atualiza um projeto existente.
- **DELETE /projetos/:id**: Exclui um projeto.

## Testando a API no Postman

Você pode testar a API usando o Postman. Clique no link abaixo para importar a coleção do Postman:

[![Run in Postman](https://run.pstmn.io/button.svg)](https://documenter.getpostman.com/view/42619953/2sB2j7cosF)
