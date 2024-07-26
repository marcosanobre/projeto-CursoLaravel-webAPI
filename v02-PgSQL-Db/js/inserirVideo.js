// Importação de metodos
import * as commonLib from "./comum.js";

//import { idGrupoSelecionado, txtGrupoSelecionado } from "./mostrarVideos.js";
//import { baseData } from "./mostrarVideos.js";
//const idGrupoSelecionado = require('./mostrarVideos.js');
//const txtGrupoSelecionado = require('./mostrarVideos.js');
//const {baseData} = require('./mostrarVideos.js');

function grupoSelecionado( idGrupo ) {
    const urlFetchGrupo = `http://127.0.0.1:3000/grupo/${idGrupo}`;
    fetch(urlFetchGrupo)
        .then( (response) => {
                return response.json();
        })
        .then( (grupo) => {
            const labelGrupo = document.getElementById("grupo_selecionado");
            labelGrupo.innerHTML = grupo[0].titulo;
            document.getElementById('imagem_grupo').style.backgroundImage = commonLib.defineImagem(idGrupo);
        })
        .catch(function() {
            // handle the error
        });
};

const urlParams = new URLSearchParams(window.location.search);
const idGrupoSelecionado = urlParams.get('gid');
grupoSelecionado(idGrupoSelecionado);

const formulario = document.querySelector("[data-formulario]");

async function criarVideo( evento ) {
    evento.preventDefault();
    // Dados do Form
    const titulo = document.querySelector('[data-titulo]').value;
    const url = document.querySelector('[data-url]').value;
    const video_id = document.querySelector('[data-video-id]').value;
    const playlist_id = document.querySelector('[data-playlist-id]').value;
    const imagem = document.querySelector('[data-imagem]').value;
    const tamanho_min = document.querySelector('[data-tamanho-min]').value;
    const tamanho_ms = document.querySelector('[data-tamanho-ms]').value;
    const descricao = Math.floor( Math.random() * 10 ).toString() + ' mil visualizações';
    // Invocando a API
    const urlRotaGravaVideo = `http://127.0.0.1:3000/video/${idGrupoSelecionado}`;
    const postVideo = await fetch( urlRotaGravaVideo, {
        method: "POST",
        headers: {
            "Content-type": "application/json"
        },
        body: JSON.stringify( {
            titulo: titulo,
            url: url,
            imagem: imagem,
            tamanho_min: tamanho_min,
            tamanho_ms: tamanho_ms,
            descricao: descricao,
            video_id: video_id,
            playlist_id: playlist_id
        } )
    } );

    if ( ! postVideo.ok ) {
        throw new Error("Não foi possível gravar/inserir vídeo !!!");
    };

    window.location.href = `../pages/envio-concluido.html?${idGrupoSelecionado}`;
    //return postVideo.json();
};

formulario.addEventListener( "submit", evento => criarVideo( evento ) );


