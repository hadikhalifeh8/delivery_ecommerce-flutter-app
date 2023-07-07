import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';

class CheckEmailData {

Crud crud;
CheckEmailData(this.crud);

  postdata( String email) async {  
   var response = await crud.postData(Applink.checkemail,{     // re-send otp via email

            "email" : email,   
   });
      return response.fold((l) => l, (r) => r);
  }
} 