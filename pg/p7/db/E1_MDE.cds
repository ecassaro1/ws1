namespace p7.dm;

using { p7.dm as dm } from '../db/data-model';

annotate dm.E1 with @ (
	UI: {
		SelectionFields: [ ID ],
		LineItem: [
			{ Value: ID, Label: 'ID' },
			{ Value: description, Label: 'Description' }
		],
		HeaderInfo: {
			TypeName: 'E1',
			TypeNamePlural: 'E1s',
			Title: {Value: ID},
			Description: {Value: ID}
		},
				
		FieldGroup#E1ID: {
			Data:[
				{$Type: 'UI.DataField', Value: ID}
			]
		},
		Facets: [
			{
				$Type: 'UI.CollectionFacet',
				Label: 'Collection Facet Label',
				Facets: [
					{
						$Type: 'UI.ReferenceFacet', 
						Target: '@UI.FieldGroup#E1Description'
					},
				]
			}
		],			
		FieldGroup#E1Description: {
			Data:[
				{$Type: 'UI.DataField', Value: description, 
				Label: 'Description'}
			]
		}			
	}
);