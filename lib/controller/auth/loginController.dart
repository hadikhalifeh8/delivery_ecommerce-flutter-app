import 'package:delivery_ecommerce/core/class/statusRequest.dart';
import 'package:delivery_ecommerce/core/constant/routes.dart';
import 'package:delivery_ecommerce/core/functions/handlingDataController.dart';
import 'package:delivery_ecommerce/core/services/services.dart';
import 'package:delivery_ecommerce/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {

  goToForgetPasswordPage();
  login();
  goToSignUpPage();
}
class LoginControllerImp extends LoginController { 
 


Myservices myservices = Get.find();

  LoginData loginData = LoginData(Get.find());
   StatusRequest statusRequest = StatusRequest.none;
 
  late TextEditingController email;
  late TextEditingController password;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

 // bs ekbs 3a buton l password byozhar l kalam aw bye5fehon
  bool isPasswordShow = false; // بالبدايه لازم يظهر الكتابه
   showPassword()
   {
   isPasswordShow =  isPasswordShow == true ? false : true;
    update();
   }
 // bs ekbs 3a buton l password byozhar l kalam aw bye5fehon



  @override
  goToForgetPasswordPage() {
    Get.offNamed(AppRoute.forgetpassword);
   
  }

  @override
  goToSignUpPage() {
    Get.offNamed(AppRoute.signup);
   
  }

  @override
  login() async{
       if(formstate.currentState!.validate())
    {
       statusRequest = StatusRequest.loading;  // 1- loading (badda wa2et)
       update();
     var response = await loginData.postdata( email.text,  password.text); //loading هون خلص 

     print("***************##############************* Controler $response ");
     statusRequest = handlingData(response); // get data / or stausRquest (success /serverfailure / connection  failed ... /) 

     if(StatusRequest.success == statusRequest)
     {
      if(response['status'] == "success")
      {
        // data.addAll(response['data']);

      // if not approve the account     
       if(response['data']['user_approve'] == "1")
       {
        myservices.sharedPreferences.setString("id", response['data']['id'].toString());
       myservices.sharedPreferences.setString("name", response['data']['name'].toString());
       myservices.sharedPreferences.setString("email", response['data']['email'].toString());
       myservices.sharedPreferences.setString("phone", response['data']['phone_no'].toString());

       myservices.sharedPreferences.setString("step", "2");

       Get.offNamed(AppRoute.test);
       }  else{
             Get.toNamed(AppRoute.verifyCodeSignup, arguments: { "email": email.text});
       }
     
      }
      else{
        Get.defaultDialog(title: "Warning ", middleText: "Email or Password  not correct");
        statusRequest = StatusRequest.failure; // insert / update/ delete : لا يوجد تحديث / getdata : لا يوجد بيانات
      } 
     } 
      update(); 
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}