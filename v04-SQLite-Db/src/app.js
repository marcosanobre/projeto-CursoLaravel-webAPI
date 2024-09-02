// Carregar o frmwrk EXPRESS

// Observar o [type: module] no package.json
// que define que os modulos são do tipo ES
//const express = require("express");

import express from "express";

import * as dbSqlite3 from "./config/dbConnect.js";

//import Grupo from "./models/Grupo.js";

// Carregar o módulo CORS
//const cors = require('cors');

// Inicializar o frmwrk
const app = express();

// Configuração de conversão de Body
// serialização e deserialização de Objeto
// Json => Objeto => Json
//app.use( express.json() ); 
//app.use( cors() );

app.get( "/", (req, res) => {
    res.status(200).send( "Curso de Node-JS !!!" );
});

app.get('/testeAPI', async (___, res) => {
    try {
      await dbSqlite3.conexao().authenticate();
      res.status(200).send( "Conexão com o banco video_cursos.sqlite3, realizada com sucesso !!!" );
      /* 
      const dbConn = await dbSqlite3.conexao();      
      const query = "SELECT 'Agora no SQLite Server, são: ' || CURRENT_TIMESTAMP AS agora;";
      await dbConn.all( query, [], (err, rows) => { if (err) { throw err; } else { res.status(200).json( rows ); } } );
      */    
    } catch (err) {
      console.error(err);
      res.status(500).send('Problemas ao obter dados dos Grupos.');
    }
});

// *****************************************************************
// GRUPOS
// *****************************************************************
// 1o Parametro da função anonima
// async (reuest,response)
// não é usado
app.get('/grupos', async (___, res) => {
  try {
    
    /* 
    const dbConn = conexao();
    
    const query = 'SELECT * FROM grupo_videocurso ORDER BY id';

    dbConn.all( query, 
                [], 
                (err, rows) => {
                                  if (err) {
                                      throw err;
                                  } else {
                                      res.status(200).json( rows );
                                  }
                              }   
              );
    */

    const grupos = await Grupo.findAll();
    res.status(200).json( grupos );

  } catch (err) {
    console.error(err);
    res.status(500).send('Problemas ao obter dados dos Grupos.');
  }

});


export default app;
