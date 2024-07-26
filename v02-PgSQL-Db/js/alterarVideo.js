// Importação de metodos
import * as commonLib from "./comum.js";

function getVideo(idVideo) {
    // Pega os Videos
    const urlFetchVideo = `http://127.0.0.1:3000/video/${idVideo}`;
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
const idVideo = urlParams.get('alt');
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

async function gravaVideo (evento) {
    evento.preventDefault();
    // Dados do Form
    const titulo        = document.querySelector('[data-titulo]').value;
    const url           = document.querySelector('[data-url]').value;
    const video_id      = document.querySelector('[data-video-id]').value;
    const playlist_id   = document.querySelector('[data-playlist-id]').value;
    const imagem        = document.querySelector('[data-imagem]').value;
    const tamanho_min   = document.querySelector('[data-tamanho-min]').value;
    const tamanho_ms    = document.querySelector('[data-tamanho-ms]').value;
    let descricao;
    if (document.querySelector('[data-descricao]').value == '') {
        descricao = Math.floor( Math.random() * 10 ).toString() + ` mil visualizações`;
    } else {
        descricao = document.querySelector('[data-descricao]').value;
    };
    // Invocando a API
    const urlRotaGravaVideo = `http://127.0.0.1:3000/video/${idVideo}`;
    const postVideo = await fetch( urlRotaGravaVideo, {
        method: "PATCH",
        headers: {
            "Content-type": "application/json"
        },
        body: JSON.stringify( {
            titulo: titulo,
            url: url,
            video_id: video_id,
            playlist_id: playlist_id,
            imagem: imagem,
            tamanho_min: tamanho_min,
            tamanho_ms: tamanho_ms,
            descricao: descricao
        } )
    } );

    if ( ! postVideo.ok ) {
        throw new Error("Não foi possível gravar/alterar vídeo !!!");
    };

    window.location.href = `../pages/envio-concluido.html?${idVideo}`;
    //return postVideo.json();
};

formulario.addEventListener( "submit", evento => gravaVideo( evento ) );


