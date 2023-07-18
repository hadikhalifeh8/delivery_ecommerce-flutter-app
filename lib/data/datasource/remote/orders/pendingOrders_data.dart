import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';

class OrdersPendingData {

  Crud crud;
  OrdersPendingData(this.crud);

  getData() async {
   var response = await crud.postData(Applink.viewpendingOrders, {});
      return response.fold((l) => l, (r) => r);
  }


  approvedOrders(String orderid,String userid,String deliveryid) async {
   var response = await crud.postData('${Applink.approveOrder}/$orderid/$userid/$deliveryid', {});
      return response.fold((l) => l, (r) => r);
  }


}