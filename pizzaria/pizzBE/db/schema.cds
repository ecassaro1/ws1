namespace pizzBE;
using { managed } from '@sap/cds/common';

entity Pizza {
    key ID: Integer;
    nome: String(100);
    preco: Decimal(5,2);
    custo:Decimal(5,2);
    lucro: Decimal(5,2);
    ingredientes: Association to many PizzaIngredientes on ingredientes.pizza = $self;
}

entity Ingrediente {
    key ID: Integer;
    nome: String(100);
}

entity PizzaIngredientes {
    key pizza: Association to Pizza;
    key ingrediente: Association to Ingrediente;
}

entity Pedido {
    key ID: UUID;
    pizza: Association to Pizza;
}


///consumption
view C_Pizza as select from Pizza {
    ID,
    nome,
    preco,
    custo,
@readonly 
    lucro,
@readonly
    'BRL' as moeda: String(3),
    ingredientes
};


