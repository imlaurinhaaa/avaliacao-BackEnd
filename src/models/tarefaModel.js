const pool = require("../config/database");

// Listar todas as tarefas
const getTarefas = async (status_tarefa) => {
    if (!status_tarefa) {
        const result = await pool.query(
            `SELECT * FROM tarefas`
        );
        return result.rows;
    } else {
        const result = await pool.query(
            `SELECT * FROM tarefas WHERE tarefas.status_tarefa ILIKE $1`, [`%${status_tarefa}%`]
        );
        return result.rows;
    }
};

// Listar uma tarefa apenas pelo seu ID
const getTarefaById = async (id) => {
    const result = await pool.query(
        "SELECT * FROM tarefas WHERE id = $1", [id]
    );
    return result.rows[0];
};

// Criar uma nova tarefa
const createTarefa = async (name, photo, status_tarefa, description) => {
    const result = await pool.query(
        "INSERT INTO tarefas (name, photo, status_tarefa, description) VALUES ($1, $2, $3, $4) RETURNING *", [name, photo, status_tarefa, description]
    );
    return result.rows[0];
};

// Atualizar uma tarefa
const updateTarefa = async (id, name, photo, status_tarefa, description) => {
    const result = await pool.query(
        "UPDATE tarefas SET name = $1, photo = $2, status_tarefa = $3, description = $4 WHERE id = $5 RETURNING *", [name, photo, status_tarefa, description, id]
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