import 'package:delivery_ecommerce/core/constant/routes.dart';
import 'package:delivery_ecommerce/core/middleware/myMiddleware.dart';
import 'package:delivery_ecommerce/view/screen/Home/home.dart';
import 'package:delivery_ecommerce/view/screen/Home/homeScreen.dart';
import 'package:delivery_ecommerce/view/screen/Test/test.dart';

import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/checkEmail.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/resetPassword.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/successResetPassword.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:delivery_ecommerce/view/screen/auth/login.dart';
import 'package:delivery_ecommerce/view/screen/orders/archeiveOrders.dart';
import 'package:delivery_ecommerce/view/screen/orders/details.dart';
import 'package:delivery_ecommerce/view/screen/orders/pendingOrders.dart';




import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:path/path.dart';


List<GetPage<dynamic>>? routes = [

   GetPage(name:  "/", page: () => const Login(), middlewares: [MyMidlleware()]),
   // GetPage(name:  "/", page: () => const TestView(),),


// Test
   GetPage(name:  AppRoute.test, page: () => const Test(),),



// onBoarding page
   //GetPage(name:  AppRoute.onBoarding, page: () => const OnBoarding(),),

// Auth
  // GetPage(name:  AppRoute.login, page: () => const Login(),),

   //GetPage(name:  AppRoute.signup, page: () => const Signup(),),
   //GetPage(name:  AppRoute.verifyCodeSignup, page: () => const VerifyCodeSignUp(),),

   GetPage(name:  AppRoute.forgetpassword, page: () => const ForgetPassword(),),
   GetPage(name:  AppRoute.verifycode, page: () => const VerifyCode(),),
   GetPage(name:  AppRoute.resetPassword, page: () => const ResetPassword(),),
   GetPage(name:  AppRoute.successRestPassword, page: () => const SuccessRestPassword(),),


   // HomeScreen
   GetPage(name:  AppRoute.homeScreeen, page: () => const HomeScreen(),),





  // Archieve / Pending / Details Orders Page
 
 GetPage(name: AppRoute.detailsOrder, page: () => const OrderDetails()), 
 GetPage(name: AppRoute.archieveOrders, page: () => const OrdersArchive()), 


];



