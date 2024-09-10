const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const routes = require("./app/routes/index.js");

const app = express();

// cria o Roteador de Rotas
routes(app);

var corsOptions = {
  origin: "http://localhost:8081"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(express.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

// Sincronização ORM -> BD
// Sincroniza as Models do ORM(sequelize)
// com o banco de dados (fisicamente)
const db = require("./app/models/index.js");
db.sequelize.sync()
  .then(() => {
    console.log("Banco Sincronizado com sucesso.");
  })
  .catch((err) => {
    console.log("Falha na Sincronização com o BD: " + err.message);
  });

/*
 Caso necessite de sincronizar na força ..

db.sequelize.sync({ force: true }).then(() => {
  console.log("Drop and re-sync db.");
});
*/

/* 
// simple test route
app.get("/testeAPI", (req, res) => {
  res.json({ message: "Rota de Teste da API." });
});
*/

// *****************************************************************
// GRUPOS
// *****************************************************************
// 1o Parametro da função anonima
// async (reuest,response) não é usado

/* 
app.get("/grupos", async (___, res) => {
  const grupos = await db.grupo_videocurso.findAll();
  res.status(200).json(grupos);
});
 */

/* 
app.get('/grupo/:id_grupo', async ( req, res) => {
  try {
      const id_grupo = req.params.id_grupo;
      const grupo = await db.grupo_videocurso.findOne( { where: { id: `${id_grupo}`} } );
      res.status(200).json(grupo);
  } catch (err) {
      console.error(err);
      res.status(500).send(`Problemas ao obter dados do Grupo: ${id_grupo}.` );
  }
});
*/



// *****************************************************************
// VIDEOS
// *****************************************************************

// get Video BY ID
app.get('/video/:id_video', async ( req, res ) => {
  try {
      const idVideo = Number( req.params.id_video );
      const video = await db.video_curso.findByPk( idVideo );
      /* 
      const dbConn = await conexao();
      const query = `SELECT * FROM video_curso WHERE id = ${idVideo};`;
      const { rows } = await dbConn.query( query );
      */
      res.status(200).json(video);
  } catch (err) {
      console.error(err);
      res.status(500).send( `Problemas ao obter dados do Video (${idVideo}).` );
  }
});

// get Videos do GRUPO
app.get('/videos/:id_grupo', async ( req, res ) => {
  try {
    const id_grupo = Number(req.params.id_grupo);
    const videos = await db.video_curso.findAll( { where: { id_grupo: `${id_grupo}`}, order: [['titulo', 'DESC']] } );
    /* 
    const dbConn = await conexao();
    const query = `SELECT * FROM video_curso WHERE id_grupo = ${id_grupo} ORDER BY id ASC`;
    const { rows } = await dbConn.query( query );
    */
    res.status(200).json(videos);
  } catch (err) {
    console.error(err);
    res.status(500).send( `Problemas ao obter dados dos Videos do Grupo(${id_grupo}).` );
  }
});


// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
