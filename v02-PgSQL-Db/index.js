// Carregar biblioteca de Configuração de App 
const dotenv = require("dotenv");
dotenv.config();

// Carregar o frmwrk EXPRESS
const express = require("express");

// Carregar o módulo CORS
const cors = require('cors');

// Inicializar o frmwrk
const app = express();

// Configuração de conversão de Body
// serialização e deserialização de Objeto
// Json => Objeto => Json
app.use( express.json() );
app.use( cors() );

// Definindo uma CONNECTION por meio
// da criação de um Connection-Pool
//async function conexao() {
//    if (global.connection)
//        return global.connection.connect();
 
    const { Pool } = require('pg');
    const pool = new Pool({
        connectionString: process.env.CONNECTION_STRING
    });
 
    //apenas testando a conexão
    /* 
    const client = await pool.connect();
    console.log("Criou pool de conexões no PostgreSQL!");
 
    const res = await client.query('SELECT NOW()');
    console.log(res.rows[0]);
    client.release();
    */

    //guardando para usar sempre o mesmo
//    global.connection = pool;
//    return await pool.connect();
//}

// Configurar o EntryPoint
// listener na porta 3000
app.listen( process.env.PORT, () => {
    console.log( 'App now is running !' );
} );


// -----------------------------------------------------------------
// Configuração dos endPOINTS da API
// -----------------------------------------------------------------


// *****************************************************************
// GRUPOS
// *****************************************************************
// 1o Parametro da função anonima 
// async (reuest,response)
// não é usado
app.get('/grupos', async (___, res) => {
    try {
      const client = await pool.connect();
      const query = 'SELECT * FROM grupo_videocurso ORDER BY id;';
      const { rows } = await client.query(query);
      res.status(200).json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});

app.get('/grupo/:id_grupo', async ( req, res) => {
    try {
        const id_grupo = parseInt(req.params.id_grupo);  
        const client = await pool.connect();
        const query = `SELECT titulo FROM grupo_videocurso WHERE id = ${id_grupo};`;
        //console.log('>>>>>',query);
        const { rows } = await client.query(query);
        res.status(200).json(rows);
    } catch (err) {
        console.error(err);
        res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});


// *****************************************************************
// VIDEOS
// *****************************************************************

// get Videos do GRUPO
app.get('/videos/:id_grupo', async ( req, res ) => {
    try {
      const id_grupo = parseInt(req.params.id_grupo);
      const client = await pool.connect();
      const query = `SELECT * FROM video_curso WHERE id_grupo = ${id_grupo} ORDER BY id ASC`;
      const { rows } = await client.query( query );
      res.status(200).json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).send( `Problemas ao obter dados dos Videos do Grupo(${id_grupo}).` );
    }
});










/* 

module.exports = conexao();

async function getGrupos( result ) {
    const qry = 'select id, titulo from video_curso;';
    result = await dbConn.then( (conn) => conn.query( qry ) );
    resultado = result.rows.forEach( (element,index) => {
        const dados.push( element[index].id, element[index].titulo );
        });
    return resultado;
    return result;
}

const dados = getGrupos();
console.log(dados);

//console.log( result );

console.log( dbConn.then( conn => {
    const res = conn.query('SELECT NOW();');
    console.log( res );
    }
) );

//const res = conexao().query('SELECT NOW()');


async function conexao(query) {
    const client = await dbConn.connect();
    return client.query(query);
};
*/

//console.log( conexao("SELECT CURRENT_TIMESTAMP") );

// Teste de conexão
// dbConn.query("SELECT CURRENT_TIMESTAMP").then( (resultado) => console.log( resultado ) );

