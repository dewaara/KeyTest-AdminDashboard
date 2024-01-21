import 'package:flutter/material.dart';
import 'package:keytest_admin/app/constans/app_constants.dart';

/// all custom application theme
class AppTheme {
  static ThemeData get basic => ThemeData(
        fontFamily: Font.poppins,
        primaryColorDark: const Color.fromRGBO(38, 198, 218, 1.0),
        primaryColor: Color.fromARGB(255, 247, 245, 244),
        primaryColorLight: const Color(0xffe1aa07),
        brightness: Brightness.dark,
        primaryColorBrightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: const Color(0xffec407a),
        ).merge(
          ButtonStyle(elevation: MaterialStateProperty.all(0)),
        )),
        canvasColor: const Color(0xffb1d3ee),
        cardColor: const Color(0xff193460),
      );

// you can add other custom theme in this class like  light theme, dark theme ,etc.

// example :
// static ThemeData get light => ThemeData();

// static ThemeData get dark => ThemeData();
}
