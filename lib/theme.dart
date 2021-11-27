import 'package:flutter/material.dart';
ThemeData buildThemeData() {
  return ThemeData(
    appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        elevation: 0,
        centerTitle: true,
         backgroundColor: Colors.white,
         titleTextStyle: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         )
    ),
    textTheme: theme(),
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primarySwatch: Colors.blue,
    inputDecorationTheme: inputDecorationTheme()
  );
}

InputDecorationTheme inputDecorationTheme() {

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.auto

  );
}

TextTheme theme() {
  return TextTheme(
      bodyText1: TextStyle(),
      bodyText2:TextStyle()
  );
}


