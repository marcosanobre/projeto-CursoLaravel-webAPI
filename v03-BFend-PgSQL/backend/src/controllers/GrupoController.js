//import { grupos } from "../models/grupos.js";

const grupos = require("../models/grupos.js");

const index = function(req,res) {
    const dados = grupos.selectGrupos();
    return res.json( dados );
};

module.exports = { index };

