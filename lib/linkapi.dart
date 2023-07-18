class Applink {
static const String server = 'http://localhost:8000/api/';
static const String test = 'http://localhost:8000/api/getallusers';

// Start Authis
// static const String signup = 'http://localhost:8000/api/register';
// static const String verfycodesignup = 'http://localhost:8000/api/loginWithOtp';
//static const String login = 'http://localhost:8000/api/login'; 
static const String login = 'http://192.168.0.103/laravel/E-commerceApp/public/api/delivery_login';
static const String resendVerifyCode = "http://192.168.0.103/laravel/E-commerceApp/public/api/Delivery_sendOtp";

// Forget Password
static const String checkemail = "http://192.168.0.103/laravel/E-commerceApp/public/api/Delivery_sendOtp";
static const String verifyCodeResetPassword = "http://192.168.0.103/laravel/E-commerceApp/public/api/Delivery_loginWithOtp";
static const String resetPassword = "http://192.168.0.103/laravel/E-commerceApp/public/api/Delivery_reset-password";



// End Auth



      //==============================  View orders (Archeive / Pending/ Details)  ================================== // 
      static  String viewpendingOrders = "http://192.168.0.103/laravel/E-commerceApp/public/api/view_Pending_Order_To_DeliveryMan";
      static  String approveOrder = "http://192.168.0.103/laravel/E-commerceApp/public/api/Delivery_Man_Approved";
      static  String viewacceptedOrder = "http://192.168.0.103/laravel/E-commerceApp/public/api/view_Accepted_Order_To_DeliveryMan";
      static  String archiveOrder = "http://192.168.0.103/laravel/E-commerceApp/public/api/archive_Order_To_DeliveryMan";
      static  String detailsOrder = "http://192.168.0.103/laravel/E-commerceApp/public/api/details_Order";
      static  String doneOrderDlivery = "http://192.168.0.103/laravel/E-commerceApp/public/api/done";

}