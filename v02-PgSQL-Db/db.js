// Definindo uma CONNECTION por meio
// da criação de um Connection-Pool

async function conexao() {
    if (global.connection)
        return global.connection.connect();
 
    const { Pool } = require('pg');
    const pool = new Pool({
        connectionString: process.env.CONNECTION_STRING
    });
 
    //apenas testando a conexão
    const client = await pool.connect();
    console.log("Criou pool de conexões no PostgreSQL!");
 
    const res = await client.query('SELECT NOW()');
    console.log(res.rows[0]);
    client.release();
 
    //guardando para usar sempre o mesmo
    global.connection = pool;
    return pool.connect();
}
 
conexao();


// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::Clientes )
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


module.exports = {
    selectClientes,
    selectCliente,
    insereCliente,
    alteraCliente,
    excluiCliente
};

