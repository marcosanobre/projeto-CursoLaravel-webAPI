const express = require("express");

const grupos = require("./grupoRoutes.js");

const routes = (app) => {
    //app.route("/testeAPI").get( (___,res) => res.status(200).json( { message: "Rota de Teste da API." } ) );
    app.use( express.json(), grupos);
};


//export default routes;

module.exports = routes;
