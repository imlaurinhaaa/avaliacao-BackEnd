const projetoModel = require("../models/projetoModel");

// Listar todos os projetos | GET projetos
const getAllProjetos = async (req, res) => {
    try {
        const projetos = await projetoModel.getProjetos();
        res.status(200).json({ message: "Aqui estão os projetos disponíveis!", projetos });
    } catch (error) {
        res.status(404).json({ message: "Erro ao listar os projetos", error });
    }
};

// Listar um projeto apenas pelo seu ID | GET projetos/:id
const getProjetoById = async (req, res) => {
    try {
        const projeto = await projetoModel.getProjetoById(req.params.id);
        if (!projeto) {
            return res.status(404).json({ message: "projeto não encontrado!" });
        }
        res.status(200).json({ message: "Aqui está o projeto!", projeto });
    } catch (error) {
        res.status(404).json({ message: "Erro ao listar o projeto", error });
    }
};

// Criar um novo projeto | POST projetos
const createProjeto = async (req, res) => {
    try {
        const { tarefa_id, project } = req.body;
        if (project !== "BackEnd" && project !== "FrontEnd" && project !== "Mobile" && project !== "Projetos") {
            return res.status(400).json({ message: "Projeto inválido! Escolha entre as matérias: BackEnd, FrontEnd, Mobile e Projetos." });
        }    
        const newProjeto = await projetoModel.createProjeto(tarefa_id, project);
        res.status(201).json({ message: "projeto criado com sucesso!", newProjeto });
    } catch (error) {
        res.status(404).json({ message: "Erro ao criar o projeto", error });
    }
};

// Atualizar um projeto | PUT projetos/:id
const updateProjeto = async (req, res) => {
    try {
        const { tarefa_id, project } = req.body;
        const updatedProjeto = await projetoModel.updateProjeto(req.params.id, tarefa_id, project);
        if (!updatedProjeto) {
            return res.status(404).json({ message: "projeto não encontrado!" });
        }
        res.status(200).json({ message: "projeto atualizado com sucesso!", updatedProjeto });
    } catch (error) {
        res.status(404).json({ message: "Erro ao atualizar o projeto", error });
    }
};

// Deletar um projeto | DELETE projetos/:id
const deleteProjeto = async (req, res) => {
    try {
        const deletedProjeto = await projetoModel.deleteProjeto(req.params.id);
        if (!deletedProjeto) {
            return res.status(404).json({ message: "projeto não encontrado!" });
        }
        res.status(200).json({ message: "projeto deletado com sucesso!", deletedProjeto });
    } catch (error) {
        res.status(404).json({ message: "Erro ao deletar o projeto", error });
    }
};

module.exports = { getAllProjetos, getProjetoById, createProjeto, updateProjeto, deleteProjeto };
