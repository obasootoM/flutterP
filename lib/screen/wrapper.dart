import 'package:flutter/material.dart';
import 'package:flutter_p/screen/home_screen/home_screen.dart';
import 'package:flutter_p/screen/login_screen/login_screen.dart';
import 'package:flutter_p/screen/register/register.dart';
import 'package:flutter_p/service/user.dart';
import 'package:provider/provider.dart';
class Wrapper extends StatelessWidget {
 //static final routeName = '\\wrapper';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Named?>(context);

    if(user == null) {
      return LoginScreen();
    }
    else{
      return HomeScreen();
    }



  }
}
