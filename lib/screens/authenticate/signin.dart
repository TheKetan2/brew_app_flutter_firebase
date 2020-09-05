import 'package:brew_app_flutter_firebase/services/auth.dart';
import "package:flutter/material.dart";

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign in to Brew Crew"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 50.0,
        ),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _auth.singInAnon();
            if (result == null)
              print("Could not sign in");
            else {
              print("signed in");
              print(result.uid);
            }
          },
          child: Text("Sign in Anon"),
        ),
      ),
    );
  }
}