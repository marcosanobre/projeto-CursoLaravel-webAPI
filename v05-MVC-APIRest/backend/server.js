const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

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
const db = require("./app/models");
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

// simple test route
app.get("/testeAPI", (req, res) => {
  res.json({ message: "Rota de Teste da API." });
});

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
