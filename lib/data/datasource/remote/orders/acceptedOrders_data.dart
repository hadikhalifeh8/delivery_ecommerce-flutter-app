import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';

class AcceptedOrdersData {

  Crud crud;
  AcceptedOrdersData(this.crud);

  getData(String deliveryid) async {
   var response = await crud.postData('${Applink.viewacceptedOrder}/$deliveryid', {});
      return response.fold((l) => l, (r) => r);
  }



  doneDelivery(String orderid, userid) async {
   var response = await crud.postData('${Applink.doneOrderDlivery}/$orderid/$userid', {
    'orderid': orderid,
    'userid': userid,
   });
      return response.fold((l) => l, (r) => r);
  }


}