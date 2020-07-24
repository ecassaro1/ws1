annotate p4.Ent1 with {
	id @title:'Ent1 ID'
}

annotate p4.Ent1 with @(

	UI: {
		SelectionFields: [ id ],
		LineItem: [
			{ Value: id, Label: 'Id' },
			{ Value: description, Label: 'Description' }
		],
		HeaderFacets: [       
			{$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Ent1ID', Label:'Chave' },
		],						
		FieldGroup#Ent1ID: {
			Data:[
				{$Type: 'UI.DataField', Value: id}
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