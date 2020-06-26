namespace p5;

@cds.persistence.skip
entity CreditCard {
    key CardNumber: String(16);
    CardFlag: Association to Flag;
}

@cds.persistence.skip
entity Flag {
    key CardFlag: String(1);
    Name: String(50);
}