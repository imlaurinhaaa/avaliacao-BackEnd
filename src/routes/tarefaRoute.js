const express = require("express");
const router = express.Router();
const tarefaController = require("../controllers/tarefaController");
const upload = require("../config/upload");

const apiKeyMiddleware = require("../config/apiKey");

router.use(apiKeyMiddleware);

// Listar todas as tarefas | GET tarefas
router.get("/tarefas", tarefaController.getAllTarefas);

// Listar uma tarefa apenas pelo seu ID | GET tarefas/:id
router.get("/tarefas/:id", tarefaController.getTarefaById);

// Criar uma nova tarefa | POST tarefas
router.post("/tarefas", upload.single("photo"), tarefaController.createTarefa);

// Atualizar uma tarefa | PUT tarefas/:id
router.put("/tarefas/:id", tarefaController.updateTarefa);

// Deletar uma tarefa | DELETE tarefas/:id
router.delete("/tarefas/:id", tarefaController.deleteTarefa);

module.exports = router;