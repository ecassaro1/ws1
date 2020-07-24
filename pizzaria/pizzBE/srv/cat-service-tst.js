const cds = require('@sap/cds')

module.exports = (srv)=>{
  // Register your event handlers in here, e.g....

  srv.after ('READ', 'Pizza', async (each) => {

    console.log("each.custo="+each.custo);
    each.custo = 99; 

    const v_ings = await cds.read('pizzBE.PizzaIngredientesV1').where({pizza_ID:each.ID});
    console.log("v_ings="+v_ings);

    each.custo = 0;
    for (i=0;i<v_ings.length;i++) {
      each.custo = each.custo + v_ings[i].custo_ingrediente;
    }
    console.log("o custo calculado é "+each.custo);

    each.custo = 88;

    //each.custo = calcCusto(each.ID);
    
    //each.lucro = ( each.preco - each.custo );
    //each.lucro = 11;
  })  
}

const calcCusto = function(p_id) {
  
  let v_ings = getIngs(p_id);
  //return 20;

  let v_custo = 0;

  for (i=0;i<v_ings.length;i++) {
    v_custo = v_custo + v_ings[i].custo_ingrediente;
  }

  return v_custo;
}

const getIngs = async function(p_id) {
  let v_ings = await cds.read('pizzBE.PizzaIngredientesV1').where({pizza_ID:p_id});
  return v_ings;
}