import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Dice'),
            ),
          ),
          body: const Dicepage()),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);
  @override
  State<Dicepage> createState() => _dicepageState();
}

class _dicepageState extends State<Dicepage> {
  int leftbutton = 1, rightbutton = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftbutton = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('Images/$leftbutton.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightbutton = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('Images/$rightbutton.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
