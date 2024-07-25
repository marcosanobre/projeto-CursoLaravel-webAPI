
export default function defineImagem( grupoSelecionado ) {
    const ret = (grupoSelecionado==1) ? 'url(../img/cabecalho/RonaldoAires.jpg)' : 
                (grupoSelecionado==2) ? 'url(../img/cabecalho/ThiagoMatos.jpg)' : 
                (grupoSelecionado==3) ? 'url(../img/cabecalho/LuizDuarte.jpg)' : 'url()' ;
    return ret;
}
