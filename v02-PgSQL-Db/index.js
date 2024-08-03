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
async function conexao() {
    if (global.connection)
        return global.connection.connect();

    const { Pool } = require('pg');
    //const pool = new Pool( {connectionString: process.env.CONNECTION_STRING });
    const pool = new Pool( {
				host: process.env.PG_HOST,
				port: process.env.PG_PORT,
				database: process.env.PG_DATABASE,
				user: process.env.PG_USERNAME,
				password: process.env.PG_PASSWORD
			   } );

    //apenas testando a conexão
    /*
    const dbConn = await pool.connect();
    console.log("Criou pool de conexões no PostgreSQL!");
 
    const res = await dbConn.query('SELECT NOW()');
    console.log(res.rows[0]);
    dbConn.release();
    */

    //guardando para usar sempre o mesmo
    global.connection = pool;
    return await pool.connect();
}

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
      const dbConn = await conexao();
      const query = 'SELECT * FROM grupo_videocurso ORDER BY id;';
      const { rows } = await dbConn.query(query);
      res.status(200).json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});

app.get('/grupo/:id_grupo', async ( req, res) => {
    try {
        const id_grupo = req.params.id_grupo;
        const dbConn = await conexao();
        const query = `SELECT titulo FROM grupo_videocurso WHERE id = ${id_grupo};`;
        const { rows } = await dbConn.query(query);
        res.status(200).json(rows);
    } catch (err) {
        console.error(err);
        res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});


// *****************************************************************
// VIDEOS
// *****************************************************************

// get Video BY ID
app.get('/video/:id_video', async ( req, res ) => {
    try {
        const idVideo = req.params.id_video;
        const dbConn = await conexao();
        const query = `SELECT * FROM video_curso WHERE id = ${idVideo};`;
        const { rows } = await dbConn.query( query );
        res.status(200).json(rows);
    } catch (err) {
        console.error(err);
        res.status(500).send( `Problemas ao obter dados dos Videos do Grupo(${rows.id_grupo}).` );
    }
});

// get Videos do GRUPO
app.get('/videos/:id_grupo', async ( req, res ) => {
    try {
      const id_grupo = req.params.id_grupo;
      const dbConn = await conexao();
      const query = `SELECT * FROM video_curso WHERE id_grupo = ${id_grupo} ORDER BY id ASC`;
      const { rows } = await dbConn.query( query );
      res.status(200).json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).send( `Problemas ao obter dados dos Videos do Grupo(${id_grupo}).` );
    }
});

// POST (insere) Video no GRUPO
app.post('/video/:id_grupo', async ( req, res ) => {
    try {
        const dbConn = await conexao();
        const id_grupo = req.params.id_grupo;
        const video = req.body;
        const descr = ( video.descricao == '' ) ? Math.floor( Math.random() * 10 ).toString() + ` mil visualizações.` : video.descricao ;
        const sql = 'INSERT INTO video_curso ' +
                    '(titulo,url,imagem,tamanho_min,tamanho_ms,descricao,id_grupo,video_id,playlist_id) ' +
                    'VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9);';
        const valores = [
                        video.titulo,
                        video.url,
                        video.imagem,
                        video.tamanho_min,
                        video.tamanho_ms,
                        descr,
                        id_grupo,
                        video.video_id,
                        video.playlist_id
                        ];
        //console.log(valores);
        await dbConn.query( sql, valores );
        // resposta universal de sucesso de inclusao
        res.sendStatus(201);
    } catch (err) {
        console.error(err);
        res.status(500).send( `Problemas ao gravar dados de Video do Grupo(${id_grupo}).` );
    }
});

// PATCH (altera) Video no GRUPO
app.patch('/video/:id', async ( req, res ) => {
    try {
        const dbConn = await conexao();
        const idVideo = req.params.id;
        const video = req.body;
        const descr = ( video.descricao == '' ) ? Math.floor( Math.random() * 10 ).toString() + ` mil visualizações.` : video.descricao ;
        const currentTimeStamp = (new Date()).toJSON();
        const sql = 'UPDATE video_curso ' +
                    'SET titulo         = $1, ' +
                         'url           = $2, ' +
                         'video_id      = $3, ' +
                         'imagem        = $4, ' +
                         'tamanho_min   = $5, ' +
                         'tamanho_ms    = $6, ' +
                         'descricao     = $7, ' +
                         'updated_at    = $8, ' +
                         'playlist_id   = $9  ' +
                    ' WHERE id          = $10;' ;
        const valores= [
                         video.titulo,
                         video.url,
                         video.video_id,
                         video.imagem,
                         video.tamanho_min,
                         video.tamanho_ms,
                         descr,
                         currentTimeStamp,
                         video.playlist_id,
                         idVideo
                       ];
        //console.log(valores);
        await dbConn.query( sql, valores );
        // resposta universal de sucesso de inclusao
        res.sendStatus(201);
    } catch (err) {
        console.error(err);
        res.status(500).send( `Problemas ao gravar dados de Video do Video(${idVideo}).` );
    }
});


// EXCLUI (deleta) Video no GRUPO
app.delete('/video/:id', async ( req, res ) => {
    try {
        const dbConn = await conexao();
        const idVideo = req.params.id;
        const sql = 'DELETE FROM video_curso WHERE id = $1;';
        await dbConn.query( sql, [idVideo] );
        res.status(200).json('Video exclido com sucesso !');
    } catch (err) {
      console.error(err);
      res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});

app.get('/testeAPI', async (___, res) => {
    try {
      // Teste de conexão
      const dbConn = await conexao();
      const { rows } = await dbConn.query("SELECT 'No servidor agora é: '||CURRENT_TIMESTAMP as agora");
      res.status(200).json(rows[0]['agora']);
    } catch (err) {
      console.error(err);
      res.status(500).send('Problema com o Teste de Conexão com o BD.');
    }
});

