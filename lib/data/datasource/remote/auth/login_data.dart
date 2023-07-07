import 'package:delivery_ecommerce/core/class/crud.dart';
import 'package:delivery_ecommerce/linkapi.dart';

class LoginData {

Crud crud;
LoginData(this.crud);

  postdata( String email, String password ) async {  
   var response = await crud.postData(Applink.login,{     // loginWithOTP function

            "email" : email,   
            "password" : password , 
           
   });
      return response.fold((l) => l, (r) => r);
  }
}