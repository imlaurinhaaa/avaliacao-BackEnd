const pool = require("../config/database");

// Listar todos as projetos
const getProjetos = async () => {
        const result = await pool.query(
            `SELECT projetos.id, projetos.project, tarefas.name AS aluno, tarefas.status_tarefa AS status, tarefas.description AS descricao
            FROM projetos
            LEFT JOIN tarefas ON projetos.tarefa_id = tarefas.id `
        );
        return result.rows;
};

// Listar uma projeto apenas pelo seu ID
const getProjetoById = async (id) => {
    const result = await pool.query(
        `SELECT projetos.id, projetos.project, tarefas.name AS aluno, tarefas.status_tarefa AS status, tarefas.description AS descricao
            FROM projetos
            LEFT JOIN tarefas ON projetos.tarefa_id = tarefas.id
            WHERE projetos.id = $1`, [id]
    );
    return result.rows[0];
};

// Criar uma nova projeto
const createProjeto = async (tarefa_id, project) => {
    const result = await pool.query(
        "INSERT INTO projetos (tarefa_id, project) VALUES ($1, $2) RETURNING *", [tarefa_id, project]
    );
    return result.rows[0];
};

// Atualizar uma projeto
const updateProjeto = async (id, tarefa_id, project) => {
    const result = await pool.query(
        "UPDATE projetos SET tarefa_id = $1, project = $2 WHERE id = $3 RETURNING *", [tarefa_id, project, id]
    );
    return result.rows[0];
};

// Deletar uma projeto
const deleteProjeto = async (id) => {
    const result = await pool.query(
        "DELETE FROM projetos WHERE id = $1 RETURNING *", [id]
    );
    return result.rows[0];
};

module.exports = { getProjetos, getProjetoById, createProjeto, updateProjeto, deleteProjeto };