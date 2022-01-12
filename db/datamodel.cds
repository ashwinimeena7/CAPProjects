namespace ashwini.db;

using { managed } from '@sap/cds/common';

type Integer16 : Integer @edm.Type : 'Int16';

entity covaccine : managed
{
    key country : String(100);
    key date : Date;
    total_vaccinations : Integer64;
    fully_vaccinated : Integer64;
    daily_vaccination : Integer64;
    vaccines : String(100);
}

entity orders : managed
{
    key orderId : Integer16;
    customername : String(120);
    contactperson : String(180) not null;
    grossamount : Decimal(10,2);
    currency : String(4) not null;
}
