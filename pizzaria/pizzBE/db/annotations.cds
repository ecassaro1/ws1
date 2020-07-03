//Pizza

annotate pizzBE.C_Pizza with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Pizza',
			TypeNamePlural: 'Pizzas' 
		},

		SelectionFields: [  ID ],

		LineItem: [
			{ $Type:'UI.DataField', Value: ID },
			{ $Type:'UI.DataField', Value: nome },
			{ $Type:'UI.DataField', Value: preco }
		],

		HeaderFacets: [       
			{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#PizzaID', Label:'Chave' },
		],						
		FieldGroup#PizzaID: {
			Data:[
				{$Type: 'UI.DataField', Value: ID}
			]
		},
		Facets: [
			{
				$Type: 'UI.CollectionFacet',
				Label: 'Descrição do produto',
				Facets: [
					{
						$Type: 'UI.ReferenceFacet', 
						Target: '@UI.FieldGroup#PizzaDescription', 
						Label: 'Descrição do Produto'
					},
				]
			}
		],	
	}
);

annotate pizzBE.C_Pizza with {
  	ID 
	  	@( Common: { Label: 'Código'} );
  	nome 
	  	@( Common: { Label: 'Nome'} );
	preco 
		@( Common: { Label: 'Preço'}, Measures.ISOCurrency: moeda );
	custo 
		@( Common: { Label: 'Custo'}, Measures.ISOCurrency: moeda );
	lucro 
		@( Common: { Label: 'Lucro'}, Measures.ISOCurrency: moeda );
	moeda 
		@( Common: { Label: 'Moeda'} );
};


//Ingredientes
annotate pizzBE.Ingrediente with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Ingrediente',
			TypeNamePlural: 'Ingredientes' 
		},

		SelectionFields: [  ID ],

		LineItem: [
			{ $Type:'UI.DataField', Value: ID },
			{ $Type:'UI.DataField', Value: nome }
		],

		HeaderFacets: [       
			{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#IngredienteID', Label:'Chave' },
		],						
		FieldGroup#IngredienteID: {
			Data:[
				{$Type: 'UI.DataField', Value: ID}
			]
		},
		Facets: [
			{
				$Type: 'UI.CollectionFacet',
				Label: 'Descrição do ingrediente',
				Facets: [
					{
						$Type: 'UI.ReferenceFacet', 
						Target: '@UI.FieldGroup#IngredienteDescription', 
						Label: 'Descrição do Produto'
					},
				]
			}
		],	
	}
);

annotate pizzBE.Ingrediente with {
  	ID 
	  	@( Common: { Label: 'Código'} );
  	nome 
	  	@( Common: { Label: 'Nome'} );
};

annotate pizzBE.Ingrediente with @(
	UI: {		
		FieldGroup#IngredienteDescription: {
			Data:[
				{$Type: 'UI.DataField', Value: nome}
			]
		}		
	}
);
