// -----------------------------------------------------------------
// Métodos de Manipulação de Dados
// ( equivalente a uma MODEL::Grupos )
// -----------------------------------------------------------------
async function selectGrupos() {
    const client = await conexao();
    const resultado = await client.query( 'select id, titulo from grupo_videocurso;' );
    return resultado.rows;
};


/* 
export const grupos = {
    selectGrupos
};

 */