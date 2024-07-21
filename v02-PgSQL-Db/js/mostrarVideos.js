// const dbConn = require("./dbConn.js");
// import { dbConnection } from "./dbConn.js";

// import { db } from "./db.js";



// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::GRUPOS )
// -----------------------------------------------------------------
function getGrupos() {
    const urlFetchGrupos = 'http://localhost:3000/grupos';
    fetch(urlFetchGrupos)
        .then( (response) => {
                return response.json();
        })
        .then( (grupos) => {
            carregaComboBoxGrupos( grupos );
        })
        .catch(function() {
            // handle the error
        });
};

const componenteSelect = document.getElementById("combobox_grupo");

function carregaComboBoxGrupos( grupos ) {
    const firstOption = document.createElement('option');
    firstOption.selected = true;
    firstOption.disabled = true;
    firstOption.value = 0;
    firstOption.textContent = 'Selecione o GRUPO de videos !!!';
    componenteSelect.appendChild( firstOption );
    grupos.forEach( (grupo) => {
        //console.log( grupo.id, grupo.titulo );
        const htmlOption = document.createElement('option');
        htmlOption.value = grupo.id;
        htmlOption.textContent = grupo.titulo;
        componenteSelect.appendChild( htmlOption );
    });
};

getGrupos();
componenteSelect.addEventListener( 'change', () => getVideosDoGrupo() )


// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::VIDEOS )
// -----------------------------------------------------------------
function getVideosDoGrupo() {
    const grupoSelecionado = componenteSelect.options[componenteSelect.selectedIndex].value;
    const urlFetchVideos = `http://localhost:3000/videos/${grupoSelecionado}`;
    fetch(urlFetchVideos)
        .then( (response) => {
                return response.json();
        })
        .then( (videos) => {
            carregaVideos( videos );
        })
        .catch(function() {
            // handle the error
        });
}

const lista = document.querySelector("[data-lista]");

export default function constroiCard( titulo, descricao, url, imagem ) {
    const video = document.createElement('li');
    video.className = 'videos__item';
    video.innerHTML = `
        <iframe width="100%" height="72%" src="${url}"
            title="${titulo}" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
        <div class="descricao-video">
            <img src="${imagem}" alt="logo canal alura">
            <h3>${titulo}</h3>
            <p>${descricao}</p>
        </div>
    `;
    return video;
};

function carregaVideos( videos ) {
    // Limpa / Esvazia a biblioteca
    // de videos, antes de preencher
    while ( lista.firstChild ) {
        lista.removeChild( lista.firstChild );
    };

    try {
        videos.forEach( elemento => lista.appendChild( constroiCard( 
                                                                       elemento.titulo,
                                                                       elemento.descricao,
                                                                       elemento.url,
                                                                       elemento.imagem 
                                                                   ) ) );
    } catch {
        lista.innerHTML = `<h2 class="mensagem__titulo__erro">Não foi possível carregar a lista de vídeos.</h2>`;
    }
};


