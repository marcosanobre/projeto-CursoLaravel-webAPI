const express = require("express");

const rotas = new express.Router();

const GruposController = require( "../controllers/GrupoController.js" );

rotas.get( "/grupos", GruposController.listarGrupos );
rotas.get( "/grupo/:id_grupo", GruposController.getGrupoByID );

//export default rotas;

module.exports = rotas;
