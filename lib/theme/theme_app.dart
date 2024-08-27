
import 'package:animesearch/theme/constants.dart';
import 'package:flutter/material.dart';

ThemeData themeData(){
  return ThemeData(
    textTheme: const TextTheme(
        headlineMedium:TextStyle(
          fontSize: 20,color: Colors.black
        ),
    ),
    searchBarTheme: SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(AppColors.white),
      //overlayColor: WidgetStateProperty.all(Colors.blue),
      elevation: WidgetStateProperty.all(15.0),
      constraints: const BoxConstraints(
          minWidth: 250.0, maxWidth:460, minHeight: 44.0
      ),
      shape: WidgetStateProperty.all(const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      )),
      //side: WidgetStateProperty.all(const BorderSide(color: AppColors.black)),
      textStyle: WidgetStateProperty.all(
          const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)
      ),
      hintStyle: WidgetStateProperty.all(const TextStyle(color: Colors.grey)),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.blue
    ),
    cardTheme: const CardTheme(
      color: AppColors.white
    ),
  );
}