let idGrupoSelecionado = 0;
let txtGrupoSelecionado = '';
const componenteSelect = document.getElementById("combobox_grupo");
document.addEventListener('DOMContentLoaded', function () {
    componenteSelect?.addEventListener( 'click', (evt) => getVideosDoGrupo(evt), true );
});

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

// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::VIDEOS )
// -----------------------------------------------------------------
function defineImagem( grupoSelecionado ) {
    const ret = (grupoSelecionado==1) ? 'url(../img/cabecalho/RonaldoAires.jpg)' : 
                (grupoSelecionado==2) ? 'url(../img/cabecalho/ThiagoMatos.jpg)' : 
                (grupoSelecionado==3) ? 'url(../img/cabecalho/Logo.png)' : 'url()' ;
    document.getElementById('imagem_grupo').style.backgroundImage = ret;
}

function getVideosDoGrupo(evento) {
    evento.preventDefault();
    // Recupera Grupo selecionado
    idGrupoSelecionado = componenteSelect.options[componenteSelect.selectedIndex].value;
    txtGrupoSelecionado= componenteSelect.options[componenteSelect.selectedIndex].textContent;
    // Define imagem de acordo
    defineImagem( idGrupoSelecionado );
    const urlFetchVideos = `http://localhost:3000/videos/${idGrupoSelecionado}`;
    fetch(urlFetchVideos)
        .then( (response) => {
                return response.json();
        })
        .then( (videos) => {
            //componenteSelect.removeEventListener( 'click', getVideosDoGrupo, false); 
            carregaVideos( videos );
        })
        .catch(function() {
            // handle the error
        });
}

const lista = document.querySelector("[data-lista]");

function constroiCard( titulo, descricao, url, imagem ) {
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

export { idGrupoSelecionado, txtGrupoSelecionado } ;



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

