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
            const videos = await db.video_curso.findAll( { where: { id_grupo: `${id_grupo}`}, order: [['id_grupo', 'ASC']] } ); //, ['titulo', 'ASC']
            res.status(200).json(videos);
        } catch (err) {
            const id_grupo = Number(req.params.id_grupo);
            res.status(500).json( { message: `${err.message} - Problemas ao obter dados dos Videos do Grupo (${id_grupo}).` } );
        }
    };

    static async postNewVideo( req, res ) {
        try {
            const id_grupo = req.params.id_grupo;
            const video = req.body;
            const descr = ( video.descricao == '' ) ? Math.floor( Math.random() * 10 ).toString() + ` mil visualizações.` : video.descricao ;
            const valores = {
                titulo: video.titulo,
                url: video.url,
                imagem: video.imagem,
                tamanho_min: video.tamanho_min,
                tamanho_ms: video.tamanho_ms,
                descricao: descr,
                id_grupo: id_grupo,
                video_id: video.video_id,
                playlist_id: video.playlist_id
            };
            await db.video_curso.create( valores )
                  .then( dados => {
                    // resposta universal de sucesso de inclusao
                    res.status(201).send(dados);
                  });
        } catch (err) {
            const id_grupo = Number(req.params.id_grupo);
            res.status(500).json( { message: `${err.message} - Problemas ao inserir dados de Video do Grupo (${id_grupo}).` } );
        };    
    };

    static async patchVideo( req, res ) {
        try {
            const idVideo = req.params.id;
            const video = req.body;
            const descr = ( video.descricao == '' ) ? Math.floor( Math.random() * 10 ).toString() + ` mil visualizações.` : video.descricao ;
            const currentTimeStamp = (new Date()).toJSON();
            video.updatedAt = currentTimeStamp;
            video.descricao = descr;
            await db.video_curso.update( video, { where: {id: idVideo} } );

        } catch (err) {
            const id_grupo = Number(req.params.id_grupo);
            res.status(500).json( { message: `${err.message} - Problemas ao obter dados dos Videos do Grupo (${id_grupo}).` } );
        };    
    };

};

module.exports = VideoCursoController;

