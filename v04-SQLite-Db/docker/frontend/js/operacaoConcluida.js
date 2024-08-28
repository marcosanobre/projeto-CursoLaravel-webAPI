// Importação de metodos
import * as commonLib from "./comum.js";

const API_URL = commonLib.API_URL;
const APP_URL = commonLib.APP_URL;

const botaoVoltar = document.getElementById("botao_voltar");
botaoVoltar.href  = `${APP_URL}/index.html`;
