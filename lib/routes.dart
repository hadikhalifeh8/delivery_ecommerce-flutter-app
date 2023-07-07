import 'package:delivery_ecommerce/core/constant/routes.dart';
import 'package:delivery_ecommerce/core/middleware/myMiddleware.dart';
import 'package:delivery_ecommerce/view/screen/Test/test.dart';

import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/checkEmail.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/resetPassword.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/successResetPassword.dart';
import 'package:delivery_ecommerce/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:delivery_ecommerce/view/screen/auth/login.dart';




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


];



// Map<String, Widget Function(BuildContext)> routes = {
 
//   // test page
//   AppRoute.test : (context) => const Test(),

//   // onBoarding page
// AppRoute.onBoarding :(context) => const OnBoarding(),

// // Auth
// AppRoute.login :(context) => const Login(),

// AppRoute.signup :(context) => const Signup(),
// AppRoute.verifyCodeSignup :(context) => const VerifyCodeSignUp(),

// AppRoute.forgetpassword :(context) => const ForgetPassword(),
// AppRoute.verifycode :(context) => const VerifyCode(),
// AppRoute.resetPassword :(context) => const ResetPassword(),
// AppRoute.successRestPassword :(context) => const SuccessRestPassword(),

// };