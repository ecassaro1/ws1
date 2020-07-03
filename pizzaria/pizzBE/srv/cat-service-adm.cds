using { pizzBE as my } from '../db/schema';


@path:'/adm'
service AdmService {
  
  @odata.draft.enabled
  entity Pizza as projection on my.C_Pizza;
  
  @odata.draft.enabled
  entity Ingredientes as projection on my.Ingrediente;

  @odata.draft.enabled
  entity PizzaIngredientes as projection on my.PizzaIngredientes;

  @readonly
  entity Pedido as projection on my.Pedido;
}