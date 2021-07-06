namespace p7.srv;

using { p7.dm as dm } from '../db/data-model';

service Admin {
    entity Entity1 as projection on dm.E1;
}