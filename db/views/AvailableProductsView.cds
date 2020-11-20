using { training.salesorder as salesorder } from '../schema/salesorder';
using { training.products as products } from '../schema/product';

namespace training.views;

define view AvailableProductsView as 

    select from products.TbIProducts as prod where prod.validFrom <= now() and prod.validTo >= now();
      
    
