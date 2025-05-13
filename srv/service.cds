
using { testPrj.db as myservice } from '../db/data-model';


service SupplierService {
@odata.draft.enabled

    entity Suppliers
     as projection on myservice.Suppliers;
    entity products as projection on myservice.Products;
}
