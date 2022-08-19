import 'package:flutter/material.dart';
import 'Login.dart';
import 'Welcome.dart';
import 'Signup.dart';
void main() {
  runApp(leazkart());
}
class leazkart extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: welcome.id,
      routes: {
        welcome.id:(context)=>welcome(),
        login.id:(context)=>login(),
        signup.id:(context)=>signup(),
      },
    );
  }
}



