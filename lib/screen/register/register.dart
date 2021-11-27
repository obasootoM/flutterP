import 'package:flutter/material.dart';
import 'package:flutter_p/screen/register/component/body.dart';
import 'package:flutter_p/shared/loading.dart';
class Register extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final routeName = '\\register';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading ? Loading(): Scaffold(
      appBar: AppBar(
        title: Text('Register',style: TextStyle(
         fontSize: 20,
         fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
      body: Body(),
    );
  }
}
