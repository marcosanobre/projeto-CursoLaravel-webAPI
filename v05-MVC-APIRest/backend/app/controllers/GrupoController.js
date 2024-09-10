//import bd from "../models/index.js";
const db = require("../models/index.js");

class GruposController {
    static async listarGrupos(___,res) {
        try {
            const grupos = await db.grupo_videocurso.findAll();
            res.status(200).json(grupos);              
        } catch (erro) {
            //console.error(err);
            res.status(500).json( { message: `${erro.message} - Problemas ao obter dados dos Grupos.`} );
        }
    };

    static async getGrupoByID(req,res) {
        try {
            const id_grupo = Number(req.params.id_grupo);
            const grupo = await db.grupo_videocurso.findOne( { where: { id: `${id_grupo}`} } );
            res.status(200).json(grupo);
        } catch (err) {
            const id_grupo = req.params.id_grupo;
            res.status(500).json( { message: `${err.message} - Problemas ao obter dados do Grupo: ${id_grupo}.` } );
        }      
    }
};

// export default GruposController;

module.exports = GruposController;

