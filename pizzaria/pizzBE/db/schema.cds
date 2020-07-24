namespace pizzBE;
using { managed } from '@sap/cds/common';

entity Pizza {
    key ID: Integer;
        nome: String(100);
        preco: Decimal(5,2);
        custo:Decimal(5,2);
        lucro: Decimal(5,2);
        ingredientes1: Association to many PizzaIngredientes on ingredientes1.pizza = $self;
        ingredientes: Association to many PizzaIngredientesV1 on ingredientes.pizza = $self;
}

entity Ingrediente {
    key ID: Integer;
        nome: String(100);
        custo: Decimal(5,2);
}

/*
entity PizzaIngredientes {
    key pizza: Association to Pizza;
    key ingrediente: Association to Ingrediente;
}
*/

@cds.autoexpose
entity PizzaIngredientes {
    key pizza: Association to Pizza;
    key ingrediente: Integer;
}

@cds.autoexpose
view PizzaIngredientesV1
    as select from PizzaIngredientes
    join Ingrediente
        on PizzaIngredientes.ingrediente = Ingrediente.ID
{
    key PizzaIngredientes.pizza as pizza,
    key Ingrediente.ID as ingrediente,
        Ingrediente.nome as nome_ingrediente,
        Ingrediente.custo as custo_ingrediente
};

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
