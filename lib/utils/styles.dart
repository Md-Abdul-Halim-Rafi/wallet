import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static const Color appBackgroundColor = Color(0xFFFCFFF0);

  static const Color brand = Color(0xFF2C2C2C);
  static const Color primary = Color(0xFF232323);
  static const Color secondary = Color(0xFF303633);

  static const Color headlineTextColor = Color(0xFF303633);
  static const Color headlineTextColorWhite = Colors.white;
  static const Color subTitleTextColor = Color(0xFF242424);
  static const Color networkTextColor = Color(0xFF210D2B);

  static const double radius = 12.0;
  static const double iconSize = 28.0;

  static const String primaryFont = "Inter";

  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    backgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    primaryColor: AppTheme.primary,
    textTheme: textTheme,
    fontFamily: primaryFont,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppTheme.primary,
    ),
  );

  static final TextTheme textTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    button: _button,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
  );

  static const TextStyle _headline1 = TextStyle(
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: primaryFont,
    fontSize: 35,
  );

  static const TextStyle _headline2 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w800,
    fontSize: 25,
  );

  static const TextStyle _headline3 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static const TextStyle _headline4 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.headlineTextColor,
    fontSize: 16,
  );

  static const TextStyle _headline5 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const TextStyle _headline6 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const TextStyle _button = TextStyle();

  static const TextStyle _subtitle1 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.subTitleTextColor,
    fontSize: 14,
  );

  static final TextStyle _subtitle2 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.subTitleTextColor.withOpacity(0.5),
    fontSize: 14,
  );

  static const TextStyle _bodyText1 = TextStyle(
    fontFamily: primaryFont,
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const UnderlineInputBorder textInputDecoration = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppTheme.secondary,
      width: 1.0,
    ),
  );

  static const UnderlineInputBorder textInputDecorationFocused =
  UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppTheme.primary,
    ),
  );

  static const TextStyle _bodyText2 = TextStyle();

  static const SystemUiOverlayStyle systemUiLight = SystemUiOverlayStyle(
    systemNavigationBarColor: AppTheme.brand,
    statusBarColor: AppTheme.brand,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const SystemUiOverlayStyle systemUiTrans = SystemUiOverlayStyle(
    systemNavigationBarColor: AppTheme.brand,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  );
}