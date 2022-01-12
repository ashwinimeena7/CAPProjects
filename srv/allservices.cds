using { ashwini.db as mymodel  } from '../db/datamodel';
using {API_SALES_ORDER_SRV as external} from './external/API_SALES_ORDER_SRV.csn';


@path: '/sap/opu/odata/sap/API_SALES_ORDERS/'
service MyService {

    entity Covaccine as projection on mymodel.covaccine;

    entity Orders as projection on mymodel.orders;

    @readonly
    entity Products as projection on external.A_SalesOrder{
        key SalesOrder,
        SalesOrderDate,
        SalesOrderType,
        SalesOrganization
    }

}
