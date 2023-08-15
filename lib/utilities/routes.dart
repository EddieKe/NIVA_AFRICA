import 'package:flutter/widgets.dart';
import 'package:niva/screens/details%20screen/details_screen.dart';
import 'package:niva/screens/forgot_password/forgot_password_screen.dart';
import 'package:niva/screens/home_screen/home_screen.dart';

import 'package:niva/screens/otp_screen/otp_screen.dart';
import 'package:niva/screens/user_profile_screen/user_profile_screen.dart';
import 'package:niva/screens/login_screen/log_in_screen.dart';
import 'package:niva/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:niva/screens/cart%20screen/cart.dart';
import 'package:niva/screens/splashScreen/splash_screen.dart';
// import 'package:niva/screens/authentication.dart';

import 'package:niva/screens/sign_up_screen/sign_up_screen.dart';

// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  // AuthenticationPage.routeName: (context) => AuthenticationPage(),
  LogInScreen.routeName: (context) => LogInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  UserProfileScreen.routeName: (context) => const UserProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
