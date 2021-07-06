using { pizza as external } from './external/pizza.csn';

service catalog {
    entity extPizzas as projection on external.Pizzas;
}