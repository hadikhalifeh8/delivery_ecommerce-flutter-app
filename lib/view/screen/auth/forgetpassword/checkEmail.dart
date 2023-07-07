import 'package:delivery_ecommerce/controller/auth/forget%20password/forgetPasswordController.dart';
import 'package:delivery_ecommerce/core/class/handlingDataView.dart';
import 'package:delivery_ecommerce/core/class/statusRequest.dart';
import 'package:delivery_ecommerce/core/constant/Colors.dart';
import 'package:delivery_ecommerce/core/functions/validationinput.dart';

import 'package:delivery_ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:delivery_ecommerce/view/widget/auth/customTextBodyauth.dart';
import 'package:delivery_ecommerce/view/widget/auth/customTextTitleAuth.dart';
import 'package:delivery_ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:delivery_ecommerce/view/widget/auth/logoAuth.dart';
import 'package:delivery_ecommerce/view/widget/auth/textsignin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
                backgroundColor: AppColor.greyColors,
                elevation: 0,
                centerTitle: true,
                title: Text("Forget Password", style:  Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black),
                )
                
      ),
    
   
     
     body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) => 
                      
      HandlingDataRequest(statusRequest: controller.statusRequest,
      
       widget: 
          Container(
      color: AppColor.greyColors,
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      
      child: Form(
        key: controller.formstate,
        child: ListView(children: [
          
         
          const CustomTextTitleAuth(textTitle: "Check Email"),
          const  SizedBox(height: 15.0,),
         const CustomTextBodyAuth(textbody: "Please Check your Email Address that sent a code on it "),
      
           
      
         SizedBox(height: 15.0,),
      
         CustomTextFormAuth(
                          hinttext: "Enter Your Email", 
                          labeltext: "Email", 
                          iconData: Icons.email_outlined,
      
                          mycontroller: controller.email,
                          valid: (value){
                                return valiInput(value!, 6, 100, "email");
      
                          },
                            keyBoardTypeISNumber:false,
                           
      
      
        
         ), 
      
        
      
        
      
          
      
          
           CustomButtonAuth(   buttonText: "Check", 
                               onPressed: (){
                                controller.checkEmail();
                               },
                               ),
                          
      
        
           ],),
      ),
     ))
     )
    );
  }
}