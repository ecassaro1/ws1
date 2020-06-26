using { fs1be as my } from '../db/schema';

@path:'/catalog'
service CatalogService {
  entity Ent1 as projection on my.Ent1;
}