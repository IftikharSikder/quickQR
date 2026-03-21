import 'package:flutter/material.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/dimensions.dart';

Color primaryColor = AppConstants.primaryColor;

class AppTheme {
  static ThemeData theme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xfff2f2f2),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(fontSize: Dimensions.fontSizeLarge),
      toolbarHeight: 40,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF306fc4),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radiusDefault)),
      ),
    ),
    colorScheme: ColorScheme(
      primary: primaryColor,
      onPrimary: Colors.white,
      brightness: Brightness.light,
      secondary: Color(0xFF425060),
      onSecondary: Colors.white,
      error: Color(0xFFd74030),
      onError: Colors.white,
      surface: primaryColor,
      onSurface: Colors.black,
    ),
    useMaterial3: true,
  );
}
