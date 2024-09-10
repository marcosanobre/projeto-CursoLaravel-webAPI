const express = require("express");

const rotatest = new express.Router();
rotatest.get( "/testeAPI", (req, res) => {
  res.json({ message: "Rota de Teste da API." });
}); 

const grupos = require("./grupoRoutes.js");
const videos = require("./videoRoutes.js");

const routes = (app) => {
    app.use( express.json(), rotatest);
    app.use( express.json(), grupos);
    app.use( express.json(), videos);
};

module.exports = routes;
