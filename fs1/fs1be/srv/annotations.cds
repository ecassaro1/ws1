annotate fs1be.Ent1 with {
	id @title:'Ent1 ID'
}

annotate fs1be.Ent1 with @(

	UI: {
		SelectionFields: [ id ],
		LineItem: [
			{ Value: id, Label: 'Id' },
			{ Value: description, Label: 'Description' }
		]
	}

);