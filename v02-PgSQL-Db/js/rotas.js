

// -----------------------------------------------------------------
// Configuração de ROTAS
// -----------------------------------------------------------------


// Rota para Excluir Cliente
app.delete('/clientes/:id', async (request, response) => {
    const id = parseInt(request.params.id);
    await db.excluiCliente( id );
    // resposta universal de sucesso de exclusao
    response.sendStatus(204);
} );


// Rota para Alterar Cliente
app.patch('/clientes/:id', async (request, response) => {
    const id = parseInt(request.params.id);
    const cliente = request.body;
    await db.alteraCliente( id, cliente );
    // resposta universal de sucesso de alteracao
    response.sendStatus(200);
} );


// Rota para Cadastrar Cliente
app.post('/clientes', async (request, response) => {
    const cliente = request.body;
    await db.insereCliente( cliente );
    // resposta universal de sucesso de inclusao
    response.sendStatus(201);
} );


// Rota para Listar 1 Cliente por ID
app.get('/clientes/:id', async (request, response) => {
    const id = parseInt(request.params.id);
    const dados = await db.selectCliente( id );
    response.json( dados );
} );


// Rota para Listar Clientes
app.get('/clientes', async (request, response) => {
    const dados = await db.selectClientes();
    response.json( dados );
} );


// Configurando o EndPoint qq para teste
// Rota para retorno de msg 
app.get('/teste', (request, response, next) => {
    response.json( {
        message: "It's alive !!!"
    } );
} );



