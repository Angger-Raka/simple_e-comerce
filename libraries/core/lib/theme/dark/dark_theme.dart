import 'package:flutter/material.dart';

class DarkTheme {
  DarkTheme({
    this.primaryColor = Colors.blue,
    this.secondaryColor = Colors.blue,
    this.alertColor = Colors.red,
    this.priceColor = Colors.blue,
    this.backgroundColor1 = Colors.blue,
    this.backgroundColor2 = Colors.blue,
    this.backgroundColor3 = Colors.blue,
    this.primaryTextColor = Colors.blue,
    this.secondaryTextColor = Colors.blue,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color alertColor;
  final Color priceColor;
  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color backgroundColor3;
  final Color primaryTextColor;
  final Color secondaryTextColor;

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff6C5ECF)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );

  ThemeData get data {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor1,
      elevatedButtonTheme: elevatedButtonTheme,
    );
  }
}
