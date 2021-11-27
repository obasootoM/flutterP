import 'package:flutter/material.dart';
import 'package:flutter_p/screen/home_screen/home_screen.dart';
import 'package:flutter_p/screen/wrapper.dart';
import 'screen/login_screen/login_screen.dart';
import 'package:flutter_p/screen/register/register.dart';
final Map<String ,WidgetBuilder> routes= {
  Register.routeName: (context) => Register(),
  LoginScreen.routeName:(context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  //Wrapper.routeName: (context) => Wrapper()
};

