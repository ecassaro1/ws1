using { pizzBE as my } from '../db/schema';

@path:'/menu'
service MenuService {

  @readonly
  entity Pizza as projection on my.C_Pizza
  excluding { custo, lucro };

  @readonly 
  entity PizzaIngredientes as projection on my.PizzaIngredientes;
  
  @readonly 
  entity Ingredientes as projection on my.Ingrediente;

  @odata.draft.enabled
  entity Pedido as projection on my.Pedido;
}
