class Applink {
static const String server = 'http://localhost:8000/api/';
static const String test = 'http://localhost:8000/api/getallusers';

// Start Authis
// static const String signup = 'http://localhost:8000/api/register';
// static const String verfycodesignup = 'http://localhost:8000/api/loginWithOtp';
//static const String login = 'http://localhost:8000/api/login'; 
static const String login = 'http://192.168.0.109/laravel/E-commerceApp/public/api/delivery_login';
static const String resendVerifyCode = "http://192.168.0.109/laravel/E-commerceApp/public/api/Delivery_sendOtp";

// Forget Password
static const String checkemail = "http://192.168.0.109/laravel/E-commerceApp/public/api/Delivery_sendOtp";
static const String verifyCodeResetPassword = "http://192.168.0.109/laravel/E-commerceApp/public/api/Delivery_loginWithOtp";
static const String resetPassword = "http://192.168.0.109/laravel/E-commerceApp/public/api/Delivery_reset-password";



// End Auth


}