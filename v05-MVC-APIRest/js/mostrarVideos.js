// Importação de metodos
import * as commonLib from "./comum.js";

const componenteSelect = document.getElementById("combobox_grupo");

const listaDeVideos = document.querySelector("[data-lista]");

/*  Retardar o registro do Evento CLICK
document.addEventListener('DOMContentLoaded', function () {
    componenteSelect?.addEventListener( 'click', (evt) => getVideosDoGrupo(evt), true );
});
*/


// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::GRUPOS )
// -----------------------------------------------------------------
function getGrupos() {
    const urlFetchGrupos = 'http://127.0.0.1:3000/grupos';
    fetch(urlFetchGrupos)
        .then( (response) => {
                return response.json();
        })
        .then( (grupos) => {
            carregaComboBoxGrupos(grupos);
        })
        .catch(function() {
            // handle the error
        });
};

function carregaComboBoxGrupos( grupos ) {
    commonLib.carregaComboBoxGrupos(componenteSelect, grupos);
    if (componenteSelect.options.length > 0 ) {
        componenteSelect.addEventListener( 'change', (evt) => getVideosDoGrupo(evt), false );
    }
    //componenteSelect?.addEventListener( 'change', getVideosDoGrupo(), false );
};

getGrupos();

// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::VIDEOS )
// -----------------------------------------------------------------

function getVideosDoGrupo(evento) {
    evento.preventDefault();
    // Recupera Grupo selecionado
    const idGrupoSelecionado = componenteSelect.options[componenteSelect.selectedIndex].value;
    // Define imagem de acordo
    document.getElementById('imagem_grupo').style.backgroundImage = commonLib.defineImagem( idGrupoSelecionado );
    // Define a URL de Inserir Video
    const link2InsereVideo = document.getElementById("link_2_insertVideo");
    link2InsereVideo.href = `./pages/inserir-video.html?gid=${idGrupoSelecionado}`
    // Pega os Videos
    const urlFetchVideos = `http://127.0.0.1:3000/videos/${idGrupoSelecionado}`;
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

function carregaVideos( videos ) {
    commonLib.carregaVideos( listaDeVideos, videos );
};

// export { idGrupoSelecionado, txtGrupoSelecionado } ;

/*
exports.idGrupoSelecionado = idGrupoSelecionado;
exports.txtGrupoSelecionado = txtGrupoSelecionado;

module.exports = {
    idGrupoSelecionado,
    txtGrupoSelecionado
};

export const baseData = {
    idGrupoSelecionado: idGrupoSelecionado,
    txtGrupoSelecionado: txtGrupoSelecionado
}
*/

