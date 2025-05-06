const pool = require("../config/database");

// Listar todas as tarefas
const getTarefas = async () => {
        const result = await pool.query(
            `SELECT tarefas.id, tarefas.name AS aluno, tarefas.photo AS foto, projetos.project AS materia, tarefas.status_tarefa AS status, tarefas.description AS descricao, projetos.teacher AS professor
            FROM tarefas
            LEFT JOIN projetos ON tarefas.projeto_id = projetos.id`
        );
        return result.rows;
};

// Listar uma tarefa apenas pelo seu ID
const getTarefaById = async (id) => {
    const result = await pool.query(
        `SELECT tarefas.id, tarefas.name AS aluno, tarefas.photo AS foto, projetos.project AS materia, tarefas.status_tarefa AS status, tarefas.description AS descricao, projetos.teacher AS professor
        FROM tarefas
        LEFT JOIN projetos ON tarefas.projeto_id = projetos.id
        WHERE tarefas.id = $1`, [id]
    );
    return result.rows[0];
};

// Criar uma nova tarefa
const createTarefa = async ( projeto_id, name, photo, status_tarefa, description) => {
    const result = await pool.query(
        "INSERT INTO tarefas (projeto_id, name, photo, status_tarefa, description) VALUES ($1, $2, $3, $4, $5) RETURNING *", [projeto_id, name, photo, status_tarefa, description]
    );
    return result.rows[0];
};

// Atualizar uma tarefa
const updateTarefa = async (id, status_tarefa) => {
    const result = await pool.query(
        "UPDATE tarefas SET status_tarefa =$1 WHERE id = $2 RETURNING *", [status_tarefa, id]
    );
    return result.rows[0];
};

// Deletar uma tarefa
const deleteTarefa = async (id) => {
    const result = await pool.query(
        "DELETE FROM tarefas WHERE id = $1 RETURNING *", [id]
    );
    return result.rows[0];
};

module.exports = { getTarefas, getTarefaById, createTarefa, updateTarefa, deleteTarefa };