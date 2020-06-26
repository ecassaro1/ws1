using { p5 as my } from '../db/schema';

@path:'/catalog'
service CatalogService {
  entity CreditCard as projection on my.CreditCard;
  entity Flag as projection on my.Flag;
}