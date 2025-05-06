const express = require("express");
const router = express.Router();
const reportController = require("./../controllers/reportController");

router.get("/report/projetos/pdf", reportController.exportProjetosPDF);
router.get("/report/tarefas/pdf", reportController.exportTarefasPDF);

module.exports = router;