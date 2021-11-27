
// ignore_for_file: non_constant_identifier_names, recursive_getters
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';
class AuthService{

 final FirebaseAuth _auth = FirebaseAuth.instance;

 //create object for FirebaseUser
 Named? _userFromFirebaseUser(var user) {
   return user != null ? Named(uid: user.uid) : null;
 }

 //sign in with email and password
/* Future signInWithEmailAndPassword(String email,String password) async {
   try{
     var result = await _auth.signInWithEmailAndPassword(email: email, password: password);
     var user = result.user;
     return _userFromFirebaseUser(user);
   }
   catch(e){
     // ignore: avoid_print
     print(e.toString());
     return null;
   }
 }

 */


//sign in with password and email
  Future signInWithEmailAndPassword(String email,String password,) async {
    try{
      var result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      var user = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
     // ignore: avoid_print
     print(e.toString());
     return null;
    }
  }


  //auth change user stream
  Stream<Named?> get user => _auth
      .authStateChanges()
      .map(_userFromFirebaseUser);

  //sign in Anon
Future signInAnon() async {
  try {
      var result  = await _auth.signInAnonymously();
      var user = result.user;
      return _userFromFirebaseUser(user);
  }catch(e) {
   // ignore: avoid_print
   print(e.toString());
   return null;
  }
}
  
}