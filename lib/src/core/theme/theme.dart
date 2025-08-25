import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,

    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.grannySmithApple,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.grannySmithApple,
      selectionColor: Colors.black12, // seçili text rəngi
      selectionHandleColor: AppColors.grannySmithApple,
    ),
    primaryColor: AppColors.grannySmithApple,
    hintColor: Colors.grey,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.grannySmithApple),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.grannySmithApple, width: 2),
      ),

      hintStyle: TextStyle(color: Colors.grey,),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.grannySmithApple,
      foregroundColor: Colors.white, // Icon rengi
      shape: const CircleBorder(),   // Dairevi şekil
      elevation: 4,                 
    ),
  );
}

class AppColors {
  static final Color grannySmithApple = Color(0xffa8e4a0);
}
