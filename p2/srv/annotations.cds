annotate p2.Ent1 with {
	id @title:'Ent1 ID'
}

annotate p2.Ent1 with @(

	UI: {
		SelectionFields: [ id ],
		LineItem: [
			{ Value: id, Label: 'Id' },
			{ Value: description, Label: 'Description' }
		]
	}

);