const express = require("express");
const router = express.Router();
const projetoController = require("../controllers/projetoController");

// Listar todas as projetos | GET projetos
router.get("/projetos", projetoController.getAllProjetos);

// Listar uma projeto apenas pelo seu ID | GET projetos/:id
router.get("/projetos/:id", projetoController.getProjetoById);

// Criar uma nova projeto | POST projetos
router.post("/projetos", projetoController.createProjeto);

// Atualizar uma projeto | PUT projetos/:id
router.put("/projetos/:id", projetoController.updateProjeto);

// Deletar uma projeto | DELETE projetos/:id
router.delete("/projetos/:id", projetoController.deleteProjeto);

module.exports = router;