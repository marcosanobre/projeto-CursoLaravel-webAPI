
import { conectaBanco } from "./conectaBanco.js";

import { db } from "./db.js";

const clientDB = conectaBanco.conexao();

const componenteSelect = document.getElementById("combobox_grupo");
function carregaSelect( clientDB ) {
    const grupos = db.selectGrupos( clientDB );
    console.log(grupos);
/* 
    grupos.forEach( (grupo) => {
        const htmlOption = document.createElement('option');
        htmlOption.value = grupo->id;
        htmlOption.textContent = grupo->titulo;
        componenteSelect.appendChild( htmlOption );
    });

 */
};


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

async function listaVideos() {
    try {
        const listaApi = await conectaApi.listaVideos();
        listaApi.forEach( elemento => lista.appendChild( constroiCard( 
                                                                        elemento.titulo,
                                                                        elemento.descricao,
                                                                        elemento.url,
                                                                        elemento.imagem 
                                                                    ) ) );
    } catch {
        lista.innerHTML = `<h2 class="mensagem__titulo__erro">Não foi possível carregar a lista de vídeos.</h2>`;
    }
};

// listaVideos();

carregaSelect( clientDB );





