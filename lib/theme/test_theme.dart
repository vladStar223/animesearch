
import 'package:flutter/material.dart';

ThemeData themeData(){
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          splashFactory: InkSplash.splashFactory,
          overlayColor: WidgetStateProperty.all(Colors.blue),
        ),
      ),
    textTheme: TextTheme(
        headlineMedium:TextStyle(
          fontSize: 20,color: Colors.black
        ),
    )
  );
}