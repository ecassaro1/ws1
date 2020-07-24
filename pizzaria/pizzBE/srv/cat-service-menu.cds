using { pizzBE as my } from '../db/schema';

@path:'/menu'
service MenuService {

  @readonly
  entity Pizza as projection on my.C_Pizza
    excluding { custo, lucro };

  @odata.draft.enabled
  entity Pedido as projection on my.Pedido;

  @readonly
  entity PizzaIngredientes as projection on my.PizzaIngredientesV1
    excluding { custo };  
}
