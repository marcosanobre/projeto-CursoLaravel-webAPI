// Carregar biblioteca de Configuração de App
const dotenv = require("dotenv");
dotenv.config();

// Carregar o frmwrk EXPRESS
const express = require("express");

// Inicializar o frmwrk
const app = express();

// Configuração de conversão de Body
// serialização e deserialização de Objeto
// Json => Objeto => Json
app.use( express.json() );

// Definindo uma CONNECTION por meio
// da criação de um Connection-Pool
async function conexao() {
    if (global.connection)
        return global.connection.connect();
 
    const { Pool } = require('pg');
    const pool = new Pool({
        connectionString: process.env.CONNECTION_STRING
    });
 
    //apenas testando a conexão
    const client = await pool.connect();
    console.log("Criou pool de conexões no PostgreSQL!");
 
    const res = await client.query('SELECT NOW()');
    console.log(res.rows[0]);
    client.release();
 
    //guardando para usar sempre o mesmo
    global.connection = pool;
    return pool.connect();
}

// Configurar o EntryPoint
// listener na porta 3000
app.listen( process.env.PORT, () => {
    console.log( 'App now is running !' );
} );

// Inclui configurador de Banco
//const db = require('../db.js');



export const conectaBanco = {
    conexao
};

