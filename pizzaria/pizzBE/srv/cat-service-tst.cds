using { pizzBE as my } from '../db/schema';

@path:'/test'
service TestService 
{
  entity Pizza as projection on my.Pizza;  

  @odata.draft.enabled
  entity Ingrediente as projection on my.Ingrediente;
}