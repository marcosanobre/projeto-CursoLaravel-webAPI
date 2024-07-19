// Cria uma instancia do PG-Pool Connection
// invocando o Constructor da classe
let pgp = require("pg-promise")();

// Cria uma var Global com a Conexção ao Banco
let dbConnection = pgp("postgresql://postgres:pg01@172.18.0.5:5432/video_cursos");

module.exports = dbConnection;

// exports.conexao;

/* 
exports.dbConnection = function db () {
    // Cria uma instancia do PG-Pool Connection
    // invocando o Constructor da classe
    const pgp = require("pg-promise")();

    // Cria uma var Global com a Conexção ao Banco
    const conexao = pgp("postgresql://postgres:pg01@172.18.0.5:5432/video_cursos");
    conexao.query("SELECT CURRENT_TIMESTAMP").then( (resultado) => console.log( resultado ) ) ;
    return conexao;
}
*/

/* 
export default function dbConnection() {
    // Cria uma instancia do PG-Pool Connection
    // invocando o Constructor da classe
    const pgp = require("pg-promise")();

    // Cria uma var Global com a Conexção ao Banco
    const conexao = pgp("postgresql://postgres:pg01@172.18.0.5:5432/video_cursos");
    return conexao;
}
*/

//dbConnection( conexao );

/* 
export const conexaoDB = {
    dbConnection
}
*/

