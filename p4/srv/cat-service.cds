using { p4 as my } from '../db/schema';

@path:'/catalog'
service CatalogService {

  @odata.draft.enabled
  entity Ent1 as projection on my.Ent1;
}