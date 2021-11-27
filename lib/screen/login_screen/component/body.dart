import 'package:flutter/material.dart';
import 'package:flutter_p/constant/rounded_botton.dart';
import 'package:flutter_p/screen/home_screen/home_screen.dart';
import 'package:flutter_p/screen/register/register.dart';
import 'package:flutter_p/service/auth.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String password = '';
  String email = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: SizedBox(
                      width: double.infinity,
                      child: Text
                        ('we buy and sell here\n for small discount',
                        textAlign: TextAlign.center,)),
                ),),
              ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: buildTextUsernameFormField(),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: buildTextPasswordFormField(),
            ),
            // ignore: deprecated_member_use
            SizedBox(height: 20,),
            RoundedBotton(text: 'sign in', press: ()  async {
            if(_formKey.currentState!.validate()) {
              dynamic result = await _auth.signInWithEmailAndPassword(
                  email, password);
             if(result == null) {
               setState(() =>
                 error = 'could not sign in'
               );
             }


             }


            },),
            SizedBox(height: 10,),
            Text(error,
            style: TextStyle(
              fontSize: 10,
              color: Colors.red
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 100,
              left: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('don\'t have an account?'),
                    Spacer(),
                    GestureDetector(child: Text('Register',
                    style: TextStyle(
                     color: Colors.red
                    ),),
                    onTap: () {
                      Navigator.pushNamed(context, Register.routeName);
                    },
                    )
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextPasswordFormField() {
    return TextFormField(
      validator: (value) => value!.length < 8 ? 'must be greater than 8':null,
      onChanged:  (value) {
       setState(() => password = value
       );
      },
         keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'password',
          labelText: 'password',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
              style: BorderStyle.solid,

            ),
              gapPadding: 10
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.yellow,
              style: BorderStyle.solid
            )
          ),
            floatingLabelBehavior: FloatingLabelBehavior.auto
        ),
      );
  }

  TextFormField buildTextUsernameFormField() {
    return TextFormField(
      validator:  (value) => value!.isEmpty ? 'Enter an Email': null,
      onChanged:  (value) {
          setState(()  => email = value
          );
      },
      keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        hintText: 'username',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.yellow,
                    style: BorderStyle.solid
                ),
              gapPadding: 10
            ),
          labelText: 'username',
          floatingLabelBehavior: FloatingLabelBehavior.auto
        ),
      );
  }
}

