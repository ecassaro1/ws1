namespace p4.srv;

using { p4.proj as proj } from './proj1';

service srv1 {
    entity TipoProblema as projection on proj.TipoProblema;
}