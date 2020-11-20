using {Base, STATUS_TYPE} from './common';
using {training.products.TbIProducts} from './product';
using {training.client.TbIClient} from './client';
using {training.user.TbIUser} from './user';


namespace training.salesorder;

entity TbISalesOrder: Base {
    status: STATUS_TYPE;
    user: Association to TbIUser;
    client: Association to TbIClient;
}

entity TbISalesOrderItem : Base {
    status: STATUS_TYPE;
    salesOrder: Association to TbISalesOrder;
    product: Association to TbIProducts;
    quantity: Integer;
}
