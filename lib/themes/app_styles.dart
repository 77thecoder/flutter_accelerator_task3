import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';

class AppStyles {
  AppStyles._();

  static const headline3 = TextStyle(
    fontSize: 48,
    height: 64 / 48,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const headline4 = TextStyle(
    fontSize: 34,
    height: 40 / 34,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const headline5 = TextStyle(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const headline6 = TextStyle(
    fontSize: 20,
    height: 28 / 20,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const subtitle1 = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const subtitle2 = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const button = TextStyle(
    fontSize: 14,
    height: 24 / 14,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const body1 = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.44,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const body2 = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const caption = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );

  static const overline = TextStyle(
    fontSize: 10,
    height: 16 / 10,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  );
}

TextTheme buildAppTextTheme() {
  return TextTheme(
    headline3: AppStyles.headline3,
    headline4: AppStyles.headline4,
    headline5: AppStyles.headline5,
    headline6: AppStyles.headline6,
    subtitle1: AppStyles.subtitle1,
    subtitle2: AppStyles.subtitle2,
    button: AppStyles.button,
    bodyText1: AppStyles.body1,
    bodyText2: AppStyles.body2,
    caption: AppStyles.caption,
    overline: AppStyles.overline,
  );
}