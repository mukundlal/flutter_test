import 'package:flutter/material.dart';
import 'package:krishi_app/screens/auth/authenticate.dart';

class Wrapper extends StatefulWidget {
  @override
  _Wrapper createState() => _Wrapper();
}

class _Wrapper extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
