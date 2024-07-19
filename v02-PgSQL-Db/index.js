//import { conexaoDB } from "./js/dbConn.js";
const dbConn = require("./js/dbConn.js");
//const dbConn = db.dbConnection();

// Cria uma instancia do PG-Pool Connection
// invocando o Constructor da classe
// const pgp = require("pg-promise")();

// Cria uma var Global com a Conexção ao Banco
// const dbConn = pgp("postgresql://postgres:pg01@172.18.0.5:5432/video_cursos");


// Teste de conexão
dbConn.query("SELECT CURRENT_TIMESTAMP").then( (resultado) => console.log( resultado ) );

// module.exports = dbConn;
