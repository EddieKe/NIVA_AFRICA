import 'package:flutter/widgets.dart';
import 'package:niva/screens/details_screen.dart';
import 'package:niva/screens/forgot_password_screen.dart';
import 'package:niva/screens/home_screen.dart';
import 'package:niva/screens/log_in_succes.dart';
import 'package:niva/screens/otp_screen.dart';
import 'package:niva/screens/user_profile_screen.dart';
import 'package:niva/screens/log_in_screen.dart';
import 'package:niva/screens/splash.dart';
import 'package:niva/screens/cart.dart';

import 'package:niva/screens/sign_up_screen.dart';

// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LogInScreen.routeName: (context) => const LogInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  UserProfileScreen.routeName: (context) => UserProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
