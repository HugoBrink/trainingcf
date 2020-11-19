using { training.salesorder as salesorder } from '../schema/salesorder';
using { training.user as user } from '../schema/user';

namespace training.views;

define view SalesOrderItemByUserView as 

    select from salesorder.TbISalesOrderItem{
        ID,
        salesOrder.ID as ![salesOrderId],
        salesOrder.status as ![salesOrderStatus],
        salesOrder.user.ID as ![userID],
        salesOrder.user.name as ![userName]
    };