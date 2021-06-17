namespace p4.proj;

using { p4.dm as dm } from '../db/data-model';

entity TipoProblema as projection on dm.i_tipo_problema {
    key id as ID,
    descricao as Descricao
}
