import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';

class TestData {

Crud crud;
TestData(this.crud);

getData() async {

var response = await crud.postData(Applink.test, {});
return response.fold((l) => l, (r) => r);
}
}