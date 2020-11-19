using {Base} from './common';
using from './salesorder';

namespace training.client;

entity TbIClient : Base {
    name: String(100);
    manufacturer: String(50);
    salesPrice: Decimal;
    basePrice: Decimal;
    quantity: Integer;
}