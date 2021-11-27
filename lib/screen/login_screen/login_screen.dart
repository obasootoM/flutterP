import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p/screen/home_screen/home_screen.dart';
import 'package:flutter_p/screen/login_screen/component/body.dart';
import 'package:flutter_p/shared/loading.dart';
class LoginScreen extends StatelessWidget {

  // ignore: prefer_const_declarations
  static final routeName = '//login_screen';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading? Loading():Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('flutter fireBase',style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),textAlign: TextAlign.center,),
      ),
      body: Body(),
    );
  }
}

