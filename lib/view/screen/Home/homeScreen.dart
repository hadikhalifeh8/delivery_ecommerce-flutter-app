import 'dart:io';

import 'package:delivery_ecommerce/controller/home/homeScreenController.dart';
import 'package:delivery_ecommerce/core/constant/Colors.dart';
import 'package:delivery_ecommerce/view/widget/auth/Home/CustomButtonAppBar.dart';
import 'package:delivery_ecommerce/view/widget/auth/Home/customButtonAppBarHome2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(HomeScreenconrollerImp());
   
   return  GetBuilder<HomeScreenconrollerImp>(builder: (controller) => 
   
          Scaffold(
            appBar: AppBar(title: const Text("Orders"),
             centerTitle: true,
                  elevation: 0.0,
                   iconTheme:const IconThemeData(color: AppColor.primaryColor),
                   
                   titleTextStyle: const TextStyle(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0
                   ),

        backgroundColor: Colors.white12,),
    
    
   bottomNavigationBar: CustomButtonAppBarHome(),
    
    body: WillPopScope(child: controller.listPage.elementAt(controller.currentpage),
    onWillPop: (){
       Get.defaultDialog(
                         title: "Warning",
                         titleStyle: const TextStyle(fontWeight: FontWeight.bold, color: AppColor.primaryColor),

                         middleText: "Are You Sure Exit App",
                         middleTextStyle: const TextStyle(fontSize: 16.0),


                         onConfirm: (){exit(0);},
                         confirmTextColor: Colors.black,

                         onCancel: (){},
                         cancelTextColor: Colors.blue,

                          buttonColor: Colors.blueAccent,

      
      );
      return Future.value(false);
    })
    
    
    ),
          );
   
   
      // la etna2al ben lsaf7at
    
    
   
    

  }
}