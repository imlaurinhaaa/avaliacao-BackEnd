const tarefaModel = require("../models/tarefaModel");

// Listar todas as tarefas | GET tarefas
const getAllTarefas = async (req, res) => {
    try {
        const { status_tarefa } = req.query;
        const tarefas = await tarefaModel.getTarefas(status_tarefa);
        res.status(200).json({ message: "Aqui estão as tarefas disponíveis!", tarefas });
    } catch (error) {
        res.status(404).json({ message: "Erro ao listar as tarefas", error });
    }
};

// Listar uma tarefa apenas pelo seu ID | GET tarefas/:id
const getTarefaById = async (req, res) => {
    try {
        const tarefa = await tarefaModel.getTarefaById(req.params.id);
        if (!tarefa) {
            return res.status(404).json({ message: "Tarefa não encontrada!" });
        }
        res.status(200).json({ message: "Aqui está a tarefa!", tarefa });
    } catch (error) {
        res.status(404).json({ message: "Erro ao listar a tarefa", error });
    }
};

// Criar uma nova tarefa | POST tarefas
const createTarefa = async (req, res) => {
    try {
        const { projeto_id, name, status_tarefa, description } = req.body;
        const photo = req.file ? req.file.filename : null;
        if (status_tarefa !== "Pendente" && status_tarefa !== "Em andamento" && status_tarefa !== "Concluído") {
            return res.status(400).json({ message: "Status inválido! Escolha entre Pendente, Em andamento ou Concluído." });
        }    
        const newTarefa = await tarefaModel.createTarefa(projeto_id, name, photo, status_tarefa, description);
        res.status(201).json({ message: "Tarefa criada com sucesso!", newTarefa });
    } catch (error) {
        res.status(404).json({ message: "Erro ao criar a tarefa", error });
    }
};

// Atualizar uma tarefa | PUT tarefas/:id
const updateTarefa = async (req, res) => {
    try {
        const { status_tarefa } = req.body;
        const updatedTarefa = await tarefaModel.updateTarefa(req.params.id, status_tarefa);
        if (!updatedTarefa) {
            return res.status(404).json({ message: "tarefa não encontrada!" });
        }
        res.status(200).json({ message: "tarefa atualizada com sucesso!", updatedTarefa });
    } catch (error) {
        res.status(404).json({ message: "Erro ao atualizar a tarefa", error });
    }
};

// Deletar uma tarefa | DELETE tarefas/:id
const deleteTarefa = async (req, res) => {
    try {
        const deletedTarefa = await tarefaModel.deleteTarefa(req.params.id);
        if (!deletedTarefa) {
            return res.status(404).json({ message: "Tarefa não encontrada!" });
        }
        res.status(200).json({ message: "Tarefa deletada com sucesso!", deletedTarefa });
    } catch (error) {
        res.status(404).json({ message: "Erro ao deletar a tarefa", error });
    }
};

module.exports = { getAllTarefas, getTarefaById, createTarefa, updateTarefa, deleteTarefa };
