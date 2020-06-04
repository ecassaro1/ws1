using { p1 as my } from '../db/schema';

@path:'/browse'
service CatalogService {
  entity Ent1 as projection on my.Ent1;
}