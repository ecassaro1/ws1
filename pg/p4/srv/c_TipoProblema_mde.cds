namespace p4.proj;

@UI.HeaderInfo: { TypeNamePlural: 'Tipos de Problema' }
annotate TipoProblema with {
    @UI.LineItem: [{ position: 10 }]
    ID;

    @UI.LineItem: [{ position: 20 }]
    Descricao;
}