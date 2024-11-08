using {com.logali as logali} from '../db/schema';
using com.training as training from '../db/training';

define service CatalogService {
    entity Orders as
        select from logali.zorden_jp {
            id       @mandatory,
            email    @mandatory,
            firstname,
            lastname,
            country,
            createon @readonly,
            deliverydate,
            orderstatus,
            imageurl
        //    Items
        };

    entity Items  as
        select from logali.zitems_jp {
            id      @mandatory,
            id_item @mandatory,
            name,
            description,
            releasedate,
            discontinueddate,
            price,
            height,
            width,
            depth,
            quantity,
            unitofmeasure
     //       Orders
        };
}