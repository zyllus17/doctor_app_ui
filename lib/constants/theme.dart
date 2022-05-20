import 'package:doctor_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: darkTextTheme,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: _headline1, //34px
    headline2: _headline2, //24px
    headline3: _headline3, //18px
    headline4: _headline4, //16px
    headline5: _headline5, //14px
    headline6: _headline6, //12px

    subtitle1: _subtitle1, //10px
    // subtitle2: _subtitle2, //13px
    bodyText1: _bodyText1, //16px
    // bodyText2: _bodyText2, //14px //normal
    // button: _button, //14px
    // caption: _caption, //12px
    // overline: _overline, //10px
  );

  static final TextStyle _headline1 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontSize: 34.sp,
  );

  static final TextStyle _headline2 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
  );

  static final TextStyle _headline3 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );

  static final TextStyle _headline4 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
  );

  static final TextStyle _headline5 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );

  static final TextStyle _headline6 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
  );

  static final TextStyle _subtitle1 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.black,
    fontWeight: FontWeight.normal,
    fontSize: 10.sp,
  );

  static final TextStyle _bodyText1 = TextStyle(
    fontFamily: "Roboto",
    color: AppColors.grey,
    fontWeight: FontWeight.normal,
    fontSize: 16.sp,
  );

  // static final TextStyle _bodyText2 = TextStyle(
  //   fontFamily: "RedHatDisplay",
  //   color: AppColors.textColor,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 14.sp,
  // );
}
