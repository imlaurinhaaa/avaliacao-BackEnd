const express = require("express");
const router = express.Router();
const reportController = require("./../controllers/reportController");
const apiKeyMiddleware = require("../config/apiKey");

router.use(apiKeyMiddleware);
router.get("/report/projetos/pdf", reportController.exportProjetosPDF);
router.get("/report/tarefas/pdf", reportController.exportTarefasPDF);

module.exports = router;