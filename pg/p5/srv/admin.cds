namespace p5.srv;

using { p5.dm as dm } from '../db/data-model';

service Admin {
    entity Entity1 as projection on dm.E1;
}