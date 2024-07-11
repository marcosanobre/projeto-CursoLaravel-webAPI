import { grupos } from "../models/grupos.js";

const {grupos} = require("../models/grupos.js");

console.log(grupos);

const index = function(req,res) {
    const dados = grupos.selectGrupos();
console.log(dados);
    return res.json( dados );
};

module.exports = { index };

