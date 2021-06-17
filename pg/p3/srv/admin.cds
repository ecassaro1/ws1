namespace p3.srv;

using { p3.dm as dm } from '../db/data-model';

service Admin {
    entity Ent1 as projection on dm.E1;
}