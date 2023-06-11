import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions2.dart';

const nPrimaryColor = Color(0xFF964B00);
const nPrimaryLightColor = Color(0xFFFFECDF);
const nPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFF964B00)],
);
const nSecondaryColor = Color(0xFF979797);
const nTextColor = Color(0xFF757575);

const nAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String nEmailNullError = "Please Enter your email";
const String nInvalidEmailError = "Please Enter Valid Email";
const String nPassNullError = "Please Enter your password";
const String nShortPassError = "Password is too short";
const String nMatchPassError = "Passwords don't match";
const String nNamelNullError = "Please Enter your name";
const String nPhoneNumberNullError = "Please Enter your phone number";
const String nAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: nTextColor),
  );
}
