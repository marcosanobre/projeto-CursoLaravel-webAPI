
//import { conectaBanco } from "./conectaBanco.js";


// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::Videos )
// -----------------------------------------------------------------

async function selectClientes() {
    const client = await conexao();
    const resultado = await client.query( 'SELECT * FROM Clientes;' );
    return resultado.rows;
};

async function selectCliente(id) {
    const client = await conexao();
    const resultado = await client.query( 'SELECT * FROM Clientes WHERE Id=$1', [id] );
    return resultado.rows;
};

async function insereCliente(cliente) {
    const client = await conexao();
    const sql = 'INSERT INTO Clientes (Nome,Uf,Idade) VALUES ($1,$2,$3);'
    const valores = [cliente.Nome, cliente.UF, cliente.Idade];
    return await client.query( sql, valores );
};

async function alteraCliente(id, dados) {
    const client  = await conexao();
    const sql     = "UPDATE Clientes SET Nome=$1, Uf=$2, Idade=$3 WHERE Id=$4";
    const valores = [dados.Nome, dados.UF, dados.Idade, id];
    return await client.query( sql, valores );
};

async function excluiCliente(id) {
    const client = await conexao();
    const pk = [id];
    return await client.query( "DELETE FROM Clientes WHERE Id=$1", pk );
};


export const db = {
    selectGrupos,
    selectClientes,
    selectCliente,
    insereCliente,
    alteraCliente,
    excluiCliente
};

