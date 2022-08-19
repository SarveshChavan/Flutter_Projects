import 'package:flutter/material.dart';
import 'Login.dart';
import 'Signup.dart';
class welcome extends StatefulWidget {
  static String id='Welcome';

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              height: 30,
              child: Center(
                child: Text(
                  'New Customer?',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.lightBlue,
                onPressed: () {
                  setState((){
                    Navigator.pushNamed(context, signup.id);
                  });
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              height: 30,
              child: Center(
                child: Text(
                  'Existing Customer?',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.lightBlue,
                onPressed: () {
                  setState((){
                    Navigator.pushNamed(context, login.id);
                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}