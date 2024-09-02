import app from "./src/app.js";

const PORT = 3000;

app.listen( PORT, () => {
    console.log( "Servidor Http escutando !!!" );
});



/* Forma primitiva

// Configuração do Servidor primitivo
// interno do Node-JS (sem Express)
// import http from "http";

const rotas = {
    "/": "Curso de Node-JS.",
    "/testeAPI": "Teste da API"
};

const server = http.createServer( (req,res) => {
    res.writeHead( 200, {"Content-Type" : "text/palin"} );
    res.end( rotas[ req.url ] );
});

*/

