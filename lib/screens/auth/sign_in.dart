import 'package:flutter/material.dart';
import 'package:krishi_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        title: Text('Krishi'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _authService.signInAnon();
            if (result == null) {
              print('user not signed in new');
            } else {
              print(result);
            }
          },
          child: Text("signin"),
        ),
      ),
    );
  }
}
