import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';


class ArchiveOrderData {

  Crud crud;
  ArchiveOrderData(this.crud);

  getData(String deliveryid) async {
   var response = await crud.postData('${Applink.archiveOrder}/$deliveryid', {});
      return response.fold((l) => l, (r) => r);
  }





}