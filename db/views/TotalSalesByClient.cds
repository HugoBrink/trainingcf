using { training.salesorder as salesorder } from '../schema/salesorder';
using { training.client as client } from '../schema/client';

namespace training.views;

define view TotalSalesByClient as 

    select from salesorder.TbISalesOrderItem{
        salesOrder.client.ID as ![clientID],
        salesOrder.client.name as ![clientName],
        sum(quantity * product.salesPrice) as ![TotalSalesValor]
    } group by salesOrder.client.ID,salesOrder.client.name;
    
