const db = require("../models/index.js");

class VideoCursoController {

    static async getAllVideos(___,res) {
        try {
            const videos = await db.video_curso.findAll( { order: [['id_grupo', 'ASC'], ['titulo', 'ASC']] } );
            res.status(200).json(videos);              
        } catch (erro) {
            //console.error(err);
            res.status(500).json( { message: `${erro.message} - Problemas ao obter dados dos Videos.`} );
        }
    };

    static async getVideoByID(req,res) {
        try {
            const id_video = Number(req.params.id_video);
            const video = await db.video_curso.findOne( { where: { id: `${id_video}`} } );
            res.status(200).json(video);
        } catch (err) {
            const id_video = req.params.id_video;
            res.status(500).json( { message: `${err.message} - Problemas ao obter dados do Video: ${id_video}.` } );
        }      
    };

    // get Videos do GRUPO
    static async getAllVideosDoGrupo( req, res ) {
        try {
            const id_grupo = Number(req.params.id_grupo);
            const videos = await db.video_curso.findAll( { where: { id_grupo: `${id_grupo}`}, order: [['titulo', 'ASC']] } );
            res.status(200).json(videos);
        } catch (err) {
            const id_video = req.params.id_video;
            res.status(500).json( { message: `${err.message} - Problemas ao obter dados dos Videos do Grupo (${id_grupo}).` } );
        }
    };
  
  


};

module.exports = VideoCursoController;

