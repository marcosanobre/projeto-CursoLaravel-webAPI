// Importação do metodo Default
import { default as defineImagem } from "./mostrarVideos.js";

function getVideo(id) {
    // Pega os Videos
    const urlFetchVideo = `http://localhost:3000/video/${id}`;
    fetch(urlFetchVideo)
        .then( (response) => {
                return response.json();
        })
        .then( (video) => {
console.log(video);
            carregaVideo( video );
        })
        .catch(function() {
            // handle the error
        });
}

function grupoDoVideo( idGrupo ) {
    const urlFetchGrupo = `http://localhost:3000/grupo/${idGrupo}`;
    fetch(urlFetchGrupo)
        .then( (response) => {
                return response.json();
        })
        .then( (grupo) => {
            const labelGrupo = document.getElementById("grupo_selecionado");
            labelGrupo.innerHTML = grupo[0].titulo;
            defineImagem(idGrupo);
        })
        .catch(function() {
            // handle the error
        });
};

const urlParams = new URLSearchParams(window.location.search);
const idVideo = urlParams.get('alt');
getVideo(idVideo);

let idGrupo = 0;

const formulario = document.querySelector("[data-formulario]");

function carregaVideo( video ) {
console.log('******************',video);
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
    // Invocando a API
    const urlRotaGravaVideo = `http://localhost:3000/video/${idVideo}`;
    const postVideo = await fetch( urlRotaGravaVideo, {
        method: "PATCH",
        headers: {
            "Content-type": "application/json"
        },
        body: JSON.stringify( {
            titulo: titulo,
            url: url,
            codigo: video_id,
            playlist_id: playlist_id,
            imagem: imagem,
            tamanho_min: tamanho_min,
            tamanho_ms: tamanho_ms,
            descricao: `${descricao} mil visualizações`
        } )
    } );

    if ( ! postVideo.ok ) {
        throw new Error("Não foi possível gravar/alterar vídeo !!!");
    };

    window.location.href = `../pages/envio-concluido.html?${idVideo}`;
    //return postVideo.json();
};

formulario.addEventListener( "submit", evento => gravaVideo( evento ) );

