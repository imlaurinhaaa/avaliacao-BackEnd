require("dotenv").config();  
const express = require("express");  
const cors = require("cors");  
const tarefaRoute = require("./src/routes/tarefaRoute");
const projetoRoute = require("./src/routes/projetoRoute");
//const reportRoute = require("./src/routes/reportRoute");

const app = express();  
app.use(cors()); 
app.use(express.json());

app.use("/api", tarefaRoute);
app.use("/api", projetoRoute);
//app.use("/api", reportRoute);

const PORT = process.env.PORT || 4000;  

app.listen(PORT, () => {  
    console.log(`Servidor rodando 📌  http://localhost:${PORT}`);  
});