//const cds = require('@sap/cds')
module.exports = ((srv)=>{
  // Register your event handlers in here, e.g....

  srv.after ('READ', 'Pizza', each => {
    each.lucro = ( each.preco - each.custo );
  })  
})