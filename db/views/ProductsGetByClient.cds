using { training.salesorder as salesorder } from '../schema/salesorder';

namespace training.views;

define view ProductsGetByClient as 

    select from salesorder.TbISalesOrderItem{
        ID,
        product.ID as ![productID],
        product.name as ![productName],
        salesOrder.user.ID as ![userID],
        salesOrder.user.name as ![userName]
    };
    






