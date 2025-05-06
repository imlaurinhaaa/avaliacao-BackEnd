const PDFDocument = require("pdfkit");

const projetoModel = require("../models/projetoModel");
const tarefaModel = require("../models/tarefaModel");

const exportProjetosPDF = async (req, res) => {
    try {
        const projetos = await projetoModel.getProjetos();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=projetos.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        // Título
        doc.fontSize(20).text("Relatório de Projetos", { align: "center" });
        doc.moveDown(); 

        // Cabeçalho da Tabela
        const tableTop = 130; 
        const rowHeight = 25; 
        const columnWidths = [70, 200, 200]; 
        let y = tableTop;
        
        doc.fontSize(12).font("Helvetica-Bold");
        doc.text("Id", 50, y, { width: columnWidths[0], align: "left" });
        doc.text("Project", 120, y, { width: columnWidths[1], align: "left" });
        doc.text("Teacher", 260, y, { width: columnWidths[2], align: "left" });
        doc.moveTo(50, y + rowHeight - 5).lineTo(550, y + rowHeight - 5).stroke(); 
        
        // Dados da Tabela
        doc.font("Helvetica");
        y += rowHeight;
        projetos.forEach((projeto) => {
            doc.text(projeto.id, 50, y, { width: columnWidths[0], align: "left" });
            doc.text(projeto.project, 120, y, { width: columnWidths[1], align: "left" });
            doc.text(projeto.teacher, 260, y, { width: columnWidths[2], align: "left" });
            y += rowHeight;
        
            doc.moveTo(50, y - 5).lineTo(550, y - 5).stroke();
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};

const exportTarefasPDF = async (req, res) => {
    try {
        const tarefas = await tarefaModel.getTarefas();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=tarefas.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        // Título
        doc.fontSize(20).text("Relatório de Tarefas", { align: "center" });
        doc.moveDown(); 

        // Cabeçalho da Tabela
        const tableTop = 130; 
        const rowHeight = 25; 
        const columnWidths = [70, 100, 200, 200, 200, 200]; 
        let y = tableTop;
        
        doc.fontSize(12).font("Helvetica-Bold");
        doc.text("Id", 50, y, { width: columnWidths[0], align: "left" });
        doc.text("Projeto_id", 100, y, { width: columnWidths[1], align: "left" });
        doc.text("Name", 180, y, { width: columnWidths[2], align: "left" });
        doc.text("Photo", 240, y, { width: columnWidths[3], align: "left" });
        doc.text("Status_tarefa", 300, y, { width: columnWidths[4], align: "left" });
        doc.text("Description", 400, y, { width: columnWidths[5], align: "left" });
        doc.moveTo(50, y + rowHeight - 5).lineTo(550, y + rowHeight - 5).stroke(); 
        
        // Dados da Tabela
        doc.font("Helvetica");
        y += rowHeight;
        tarefas.forEach((tarefa) => {
            doc.text(tarefa.id, 50, y, { width: columnWidths[0], align: "left" });
            doc.text(tarefa.projeto_id, 100, y, { width: columnWidths[1], align: "left" });
            doc.text(tarefa.name, 180, y, { width: columnWidths[2], align: "left" });
            doc.text(tarefa.photo, 240, y, { width: columnWidths[3], align: "left" });
            doc.text(tarefa.status_tarefa, 300, y, { width: columnWidths[4], align: "left" });
            doc.text(tarefa.description, 400, y, { width: columnWidths[5], align: "left" });
            y += rowHeight;
        
            doc.moveTo(50, y - 5).lineTo(550, y - 5).stroke();
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};


module.exports = { exportProjetosPDF, exportTarefasPDF };