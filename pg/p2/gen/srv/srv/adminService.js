const cds = require('@sap/cds')

module.exports = srv => {
    const { Promos } = srv.entities;

    srv.on('READ','Pizzas', async (req,next)=>{
        //debugger;

        let pizzas = await next();        

        let applyDiscount = async (pizza)=>{
            const promos = await cds.transaction(req).run(
                SELECT .from(Promos) .where({ pizza_ID: pizza.ID })
            );

            for (promo of promos) {
                pizza.description += 
                    '. Promoção!!! Antes era R$'
                    + pizza.price;

                pizza.price = ( pizza.price - ( pizza.price * ( promo.discount / 100 )));
            }
        }

        if (pizzas.constructor === Array) {
            for (pizza of pizzas) {
                await applyDiscount(pizza);
            }
        } else await applyDiscount(pizzas);

        return pizzas;        
    })

}