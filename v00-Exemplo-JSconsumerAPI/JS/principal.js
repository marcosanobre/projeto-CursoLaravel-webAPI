const ul = document.querySelector('[data-js="marvel"]');
const filterImput = document.querySelector('#filter')
 
import { createHash } from './geraHash.js'
const timeStamp = Date.now().toString();
let hash = createHash(timeStamp);

const getPosts = async (param) => {
    const response = await
        fetch(
            `http://gateway.marvel.com/v1/public/characters?${param}
            &ts=${timeStamp}&apikey=8bbc353555bcee76c91a1d6354245bcb&hash=${hash}`)
    return response.json();
}

const herosFromFedd = heros => heros.data.results.map(item => `
    <li class="card ${'normal'}">
    <img class="card-image" alt=${item.name} 
    src= "${item.thumbnail.path}${'.'}${item.thumbnail.extension}"/>
    <h2 class="card-title">${item.name}</h2>
    </li>
    `).join('')

const herosFromSearch = heros => heros.data.results.map(item => `
    <li class="card ${'normal'}">
    <img class="card-image" alt=${item.name} 
    src= "${item.thumbnail.path}${'.'}${item.thumbnail.extension}"/>
    <h2 class="card-title">${item.name}</h2>
    <h3 class="card-description">${item.description}</h3>
    </li>
    `).join('')

// Exibe os heróis iniciais:
const earlyFeed = async () => {
    const heros = await getPosts('orderBy=name&limit=20');
    const postsTemplate = herosFromFedd(heros)
    ul.innerHTML = postsTemplate;
}

// Exibe os heróis pesquisados: 
const searchPersonIntoDOM = async (search) => {

    const heros = await getPosts(`${'name='}${search}`);
    const postsTemplate = herosFromSearch(heros)
    ul.innerHTML = postsTemplate;

}


// Função que verifica o input "pesquisar personagens"
const modifyInputValue = event => {
    const inputValue = event.target.value.toLowerCase();
    if (inputValue != '') {
        searchPersonIntoDOM(inputValue);
    } else if (inputValue == '' || inputValue == null) {
        earlyFeed();
    }
}

earlyFeed();
filterImput.addEventListener('input', modifyInputValue)






