using { this as dm } from '../db/data-model';

service AdminService
{
    @cds.odata.valuelist
    @cds.autoexpose
    entity Pizzas as projection on dm.Pizzas;

    @odata.draft.enabled
    @Consumption.valueHelp:'_Pizzas'
    @ObjectModel:{foreignKey.association:'_Pizzas',mandatory:true}        
    entity Promos as projection on dm.Promos;
}
