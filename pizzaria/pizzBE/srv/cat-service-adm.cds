using { pizzBE as my } from '../db/schema';


@path:'/adm'
service AdmService {
  
  @odata.draft.enabled
  entity Pizza as projection on my.C_Pizza;
  
  @odata.draft.enabled
  entity Ingrediente as projection on my.Ingrediente;

  @odata.draft.enabled
  entity PizzaIngredientes as projection on my.PizzaIngredientesV1;

  @readonly
  entity Pedido as projection on my.Pedido;
}