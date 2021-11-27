import 'package:flutter/material.dart';
import 'package:flutter_p/constant/constant.dart';
import 'package:flutter_p/screen/home_screen/component/body.dart';
import 'package:flutter_p/screen/login_screen/login_screen.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '//home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          GestureDetector(child: Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Icon(Icons.arrow_back,
            color: primaryColor,),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, LoginScreen.routeName);

          },
          )
        ],
      ),
      body: Body(),
    );
  }
}
