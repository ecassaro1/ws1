const cds = require('@sap/cds')

module.exports = srv => {
    const { Promos } = srv.entities;

    srv.on('READ','Pizzas', async (req,next)=>{
        let pizzas = await next();        

        for (pizza of pizzas) {
            const promos = await cds.transaction(req).run(
                SELECT .from(Promos) .where({ pizza_ID: pizza.ID })
            );

            for (promo of promos) {
                pizza.description += 
                    '. Promoção!!! Era $'
                    + pizza.price;

                pizza.price = ( pizza.price - ( pizza.price * ( promo.discount / 100 )));
            }
        }

        return pizzas;        
    })
}