//const cds = require('@sap/cds')
module.exports = ((srv)=>{
  // Register your event handlers in here, e.g....

  srv.on('READ','CreditCard',(req)=>{
    console.log(req.query);
    var request = require('sync-request');   
    var res1 = request('GET', 'https://numen-cartaocorporativo.uc.r.appspot.com/api/creditCard',['json']);
    var coll1 = JSON.parse(res1.getBody()).CreditCards;
    if (req.query) {
        console.log('filtrar. where='+req.query.where());
    }
    return coll1;
  })
/*
  srv.on('READ','Flag',(req)=>{
    console.log('READ Flag. req.data='+req.request);
    var coll1 =
        [
            {"CardFlag":"V", "Name":"Visa"},
            {"CardFlag":"A", "Name":"American Express"}
        ];
    return coll1;
  })
  */
})