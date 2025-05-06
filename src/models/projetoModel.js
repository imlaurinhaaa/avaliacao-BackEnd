const pool = require("../config/database");

// Listar todos as projetos
const getProjetos = async () => {
    const result = await pool.query(
        "SELECT * FROM projetos"
    );
    return result.rows;
};

// Listar uma projeto apenas pelo seu ID
const getProjetoById = async (id) => {
    const result = await pool.query(
        "SELECT * FROM projetos WHERE id = $1", [id]
    );
    return result.rows[0];
};

// Criar uma nova projeto
const createProjeto = async (project, teacher) => {
    const result = await pool.query(
        "INSERT INTO projetos (project, teacher) VALUES ($1, $2) RETURNING *", [project, teacher]
    );
    return result.rows[0];
};

// Atualizar uma projeto
const updateProjeto = async (id, teacher) => {
    const result = await pool.query(
        "UPDATE projetos SET teacher =$1 WHERE id = $2 RETURNING *", [teacher, id]
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