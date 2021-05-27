using AdminService as service from '../../srv/adminService';

annotate service.Pizzas with @(
  UI: {
    SelectionFields: [ description ],
    LineItem: [
      {Value: description},
      {Value: price}
    ],
    Facets: [
        {
            $Type: 'UI.CollectionFacet',
            Label: 'Attributes',
            Facets: [
                {
                    $Type: 'UI.ReferenceFacet', 
                    Target: '@UI.FieldGroup#PizzasAttrs'
                },
            ]
        }
    ],			
    FieldGroup#PizzasAttrs: {
        Data:[
            {$Type: 'UI.DataField', Value: description, Label: 'Description'},
            {$Type: 'UI.DataField', Value: kind, Label: 'Kind'},
            {$Type: 'UI.DataField', Value: price, Label: 'Price'}
        ]
    }	    
  }
);