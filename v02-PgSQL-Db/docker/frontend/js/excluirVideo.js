// Importação de metodos e variáveis
import * as commonLib from "./comum.js";

const API_URL = commonLib.API_URL;

function getVideo(idVideo) {
    // Pega os Videos
    const urlFetchVideo = `${API_URL}/video/${idVideo}`;
    fetch(urlFetchVideo)
        .then( (response) => {
                return response.json();
        })
        .then( (video) => {            
            video[0] ? carregaVideo( video[0] ) : null;
        })
        .catch(function() {
            // handle the error
        });
}

function grupoDoVideo( idGrupo ) {
    const urlFetchGrupo = `${API_URL}/grupo/${idGrupo}`;
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
const idVideo = urlParams.get('exc');
getVideo(idVideo);

let idGrupo = '';

const formulario = document.querySelector("[data-formulario]");

function carregaVideo( video ) {
    //const playList = (video.url.indexOf('=') > 1 && video.url.includes('?list=')) ? video.url.slice( video.url.indexOf('=')+1 ) : '';
    // Dados do Form
    document.querySelector('[data-titulo]').value      = video.titulo     ;
    document.querySelector('[data-url]').value         = video.url        ;
    document.querySelector('[data-video-id]').value    = video.video_id   ;
    document.querySelector('[data-playlist-id]').value = video.playlist_id;
    document.querySelector('[data-imagem]').value      = video.imagem     ;
    document.querySelector('[data-tamanho-min]').value = video.tamanho_min;
    document.querySelector('[data-tamanho-ms]').value  = video.tamanho_ms ;
    document.querySelector('[data-descricao]').value   = video.descricao  ;
    // Recupera Grupo do Video
    idGrupo = video.id_grupo;
    // Define Grupo
    grupoDoVideo( idGrupo );
}

async function excluiVideo (evento) {
    evento.preventDefault();
    // Invocando a API
    const urlRotaGravaVideo = `${API_URL}/video/${idVideo}`;
    const postVideo = await fetch( urlRotaGravaVideo, { method: "DELETE" } );

    if ( ! postVideo.ok ) {
        throw new Error("Não foi possível gravar/alterar vídeo !!!");
    };

    window.location.href = `../index.html`;
    //window.location.href = `../pages/envio-concluido.html?${idVideo}`;
    //return postVideo.json();
};

formulario.addEventListener( "submit", evento => excluiVideo( evento ) );
