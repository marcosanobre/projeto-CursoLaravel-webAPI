const API_URL = 'http://wslvideocursosapi.docker.localhost:3000';
const APP_URL = 'http://wslvideocursosfront.docker.localhost:8090';

function defineImagem( grupoSelecionado ) {
    const ret = (grupoSelecionado==1) ? 'url(../img/cabecalho/RonaldoAires.jpg)' : 
                (grupoSelecionado==2) ? 'url(../img/cabecalho/ThiagoMatos.jpg)' : 
                (grupoSelecionado==3) ? 'url(../img/cabecalho/LuizDuarte.jpg)' : 'url(../img/cabecalho/Logo.png)' ;
    return ret;
};

function constroiCard( id, titulo, descricao, url, imagem, APP_URL ) {
    const video = document.createElement('li');
    video.className = 'videos__item';
    video.innerHTML = `
        <iframe width="100%" height="72%" src="${url}"
            title="${titulo}" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
        <div class="video-acoes__container">
            <a class="link-acoes" href="${APP_URL}/pages/excluir-video.html?exc=${id}">Exclui</a>
            <a class="link-acoes" href="${APP_URL}/pages/alterar-video.html?alt=${id}">Altera</a>
        </div>
        <div class="descricao-video">
            <img src="${imagem}" alt="logo canal alura">
            <h3>${titulo}</h3>
            <p>${descricao}</p>
        </div>
    `;
    return video;
};

function carregaComboBoxGrupos(componenteSelect, grupos) { 
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

function carregaVideos( lista, videos, APP_URL ) {
    // Limpa / Esvazia a biblioteca
    // de videos, antes de preencher
    while ( lista.firstChild ) {
        lista.removeChild( lista.firstChild );
    };
    // Dispoe Videos na página 
    try {
        //console.log(videos);
        videos.forEach( 
            (elemento) => lista.appendChild( 
                constroiCard(   
                                elemento.id,
                                elemento.titulo,
                                elemento.descricao,
                                elemento.url,
                                elemento.imagem,
                                APP_URL 
                            ) ) );
    } catch {
        lista.innerHTML = `<h2 class="mensagem__titulo__erro">Não foi possível carregar a lista de vídeos.</h2>`;
    };
};

export { API_URL, APP_URL, carregaVideos, carregaComboBoxGrupos, constroiCard, defineImagem };



