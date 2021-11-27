import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p/route.dart';
import 'package:flutter_p/service/user.dart';
import 'package:flutter_p/service/auth.dart';
import 'package:flutter_p/theme.dart';
import 'package:provider/provider.dart';
import 'screen/wrapper.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Named?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Flutter firebase',
          theme: buildThemeData(),
          home: Wrapper(),
        //initialRoute: Wrapper.routeName,
        routes: routes,
      ),
    );
  }
}

