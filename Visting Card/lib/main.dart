import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade400,
        body:  SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('Images/profile.jpg'),
                ),
                Text(
                  'Sarvesh Chavan',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 25,
                  )
                ),
                Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Edu Sa',
                      fontWeight:FontWeight.bold,
                      fontSize: 30,
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color:Colors.white,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.red.shade400,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'chavansarvesh64@gmail.com',
                            textScaleFactor:1.12,
                            style: TextStyle(
                              fontFamily: 'Lora',
                              fontSize: 20,
                              fontWeight:FontWeight.bold,

                              color: Colors.teal.shade600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.fromLTRB(8,0,8,8),
                 child: Card(
                      color:Colors.white,
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8,8, 8),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone,
                              color: Colors.red.shade400,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '+91 9834958817',
                              textScaleFactor:1.12,
                              style: TextStyle(
                                fontFamily: 'Lora',
                                fontSize: 20,
                                fontWeight:FontWeight.bold,
                                color: Colors.teal.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
               ),
              ],
            ),
          ),
        ),
      );
  }
}
