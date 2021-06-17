namespace this;

type Kind: String enum {
    Salt;
    Sweet;
}

@odata.draft.enabled
entity Pizzas {
    key ID: UUID;
    description: String;
    kind: Kind;
    price: Integer;
}

entity Promos {
    key ID: UUID;
    pizza: Association to Pizzas;
    discount: Integer;
}
