//const cds = require('@sap/cds')
module.exports = ((srv)=>{
  // Register your event handlers in here, e.g....

  srv.after ('READ', 'Pizza', async (pizzas) => {
    for (let each of pizzas) {
      each.custo = await calcCusto(each.ID);
      each.lucro = ( each.preco - each.custo );
    }
  })  
})

const calcCusto = async (id)=>{
  const v_ings = await cds.read('pizzBE.PizzaIngredientesV1').where({pizza_ID:id});
  console.log("v_ings="+v_ings);

  let custo = 0;
  for (i=0;i<v_ings.length;i++) {
    custo = custo + v_ings[i].custo_ingrediente;
  }

  return custo;
}