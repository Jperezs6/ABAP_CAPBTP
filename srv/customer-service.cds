using {com.logali as logali} from '../db/schema';

service SaleOrder {

    entity zorden_jp as projection on logali.zorden_jp;
    entity zitems_jp as projection on logali.zitems_jp;

}
