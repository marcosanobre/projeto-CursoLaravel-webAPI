const express = require("express");

const rotas = new express.Router();

const VideoCursoController = require( "../controllers/VideoCursoController.js" );

rotas.get( "/videosAll", VideoCursoController.getAllVideos );
rotas.get( "/video/:id_video", VideoCursoController.getVideoByID );
rotas.get( "/videosDoGrupo/:id_grupo", VideoCursoController.getAllVideosDoGrupo );
rotas.post( "/video/:id_grupo", VideoCursoController.postNewVideo );
rotas.patch( "/video/:id_video", VideoCursoController.patchVideo );

module.exports = rotas;
 