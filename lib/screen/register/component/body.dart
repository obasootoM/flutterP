import 'package:flutter/material.dart';
import 'package:flutter_p/constant/rounded_botton.dart';
import 'package:flutter_p/screen/login_screen/login_screen.dart';
import 'package:flutter_p/screen/register/register.dart';
import 'package:flutter_p/service/auth.dart';
class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();

}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
   bool loading = false;

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return Form(
      key: _formKey,
      child:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: emailTextFormField(),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: passwordTextFormField(),
            ),
            SizedBox(height: 20,),
            RoundedBotton(
              press: () async{
                if(_formKey.currentState!.validate()) {
                }
            }, text: 'continue',),
            SizedBox(height: 10,),
            Text(error,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.red
              ),),
          ],
        ),
      ),
    );
  }

  /*TextFormField numberTextFormField() {
    return TextFormField(keyboardType: TextInputType.phone,
          validator: (value) => value!.isEmpty? 'fill in the number': null,
          onChanged:  (value) {
          setState(() => number = value);
          },
          decoration: InputDecoration(
              labelText: 'number',
              hintText: 'number',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid
                ),
                  borderRadius:BorderRadius.circular(10)
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always
          ));
  }

   */

  TextFormField passwordTextFormField() {
    return TextFormField(
        validator: (value) => value!.length < 8 ? 'must be greater than 8':null,
        onChanged:  (value) {
          setState(() => password = value
          );
        },
        keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
              labelText: 'password',
              hintText: 'password',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red,
                      style: BorderStyle.solid
                  ),
                  borderRadius:BorderRadius.circular(10)
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always
          ));
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      validator: (value)  => value!.isEmpty ? 'Enter an Email': null,
        onChanged:  (value) {
          setState(() => email = value);
        },
       keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'email',
          hintText: 'email',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
              style: BorderStyle.solid
            ),
          ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid
                ),
                borderRadius:BorderRadius.circular(10)
            ),
          floatingLabelBehavior: FloatingLabelBehavior.always
        )
      );
  }
}
