annotate p4.Ent1 with {
	id1 @title:'Ent1 ID'
}

annotate p4.Ent1 with @(

	UI: {
		SelectionFields: [ id1 ],
		LineItem: [
			{ Value: id1, Label: 'Id' },
			{ Value: description, Label: 'Description' }
		],
		HeaderFacets: [       
			{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Ent1ID', Label:'Chave' },
		],						
		FieldGroup#Ent1ID: {
			Data:[
				{$Type: 'UI.DataField', Value: id1}
			]
		},
		Facets: [
			{
				$Type: 'UI.CollectionFacet',
				Label: 'Descrição do produto',
				Facets: [
					{
						$Type: 'UI.ReferenceFacet', 
						Target: '@UI.FieldGroup#Ent1Description', 
						Label: 'Descrição do Produto'
					},
				]
			}
		],			
		FieldGroup#Ent1Description: {
			Data:[
				{$Type: 'UI.DataField', Value: description}
			]
		}			
	}

);