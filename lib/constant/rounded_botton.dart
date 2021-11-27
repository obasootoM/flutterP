import 'package:flutter/material.dart';
class RoundedBotton extends StatelessWidget {
  const RoundedBotton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 300,
      height: 50,
      // ignore: deprecated_member_use
      child: RaisedButton(
            color: Colors.blue,
              child: Text(text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: press),
    );


  }
}
