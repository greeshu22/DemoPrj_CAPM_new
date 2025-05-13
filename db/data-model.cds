
namespace testPrj.db;
using { cuid } from '@sap/cds/common';

entity Suppliers :cuid {
    name:String;
    phone: String;
    city:String;
    products: Composition of many Products on products.supplier = $self ;
}

entity Products:cuid{
    supplier:Association to Suppliers on supplier.ID = ID;
    name: String;
    descriptio: String;
    price: Decimal(10,2);
}