import 'package:flutter/material.dart';
import 'Login.dart';
import 'Welcome.dart';
class signup extends StatefulWidget {
  static String id='SignUp';

  @override
  State<signup> createState() => _registerState();
}
final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);
bool obserText=true;

class _registerState extends State<signup> {
  void validation(){
    final FormState? _form=_formkey.currentState;
    bool p=_form!.validate();
    if(p){
      print('Yes');
    }
    else{
      print('No');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.teal.shade200,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            children:<Widget> [
              Container(
                height: 130,
                width:double.infinity,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        validator: (value){
                          if(value==''){
                            return 'Please Fill Username';
                          }
                          else if(!(value?.length== 8)){
                            return 'Username should be of 8 character';
                          }
                          return '';
                        },
                        decoration: InputDecoration(
                          hintText:'Username',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        validator: (value){
                          if(value==''){
                            return 'Please Fill Email';
                          }
                          else if(!regExp.hasMatch(value!)){
                            return 'Email Is Invalid';
                          }
                          return '';
                        },
                        decoration: InputDecoration(
                          hintText:'Email',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.email,color: Colors.black,),
                        ),
                      ),
                      TextFormField(
                        obscureText: obserText,
                        validator: (value){
                          if(value==''){
                            return 'Please Fill Password';
                          }
                          else if(!(value?.length==6)){
                            return 'Password should be of 6 character';
                          }
                          return '';
                        },
                        decoration: InputDecoration(
                          hintText:'Password',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon:GestureDetector(
                              onTap: (){
                                setState((){
                                  obserText=!obserText;
                                });
                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(
                                obserText==true?Icons.visibility:Icons.visibility_off,
                                color: Colors.black,
                              )
                          ),
                        ),
                      ),
                      TextFormField(
                        validator: (value){
                          if(value==''){
                            return 'Please Fill Phone Number';
                          }
                          else if(!(value?.length==10)){
                            return 'Phone Number should be of 10 character';
                          }
                          return '';
                        },
                        decoration: InputDecoration(
                          hintText:'Phone',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon:  Icon(Icons.phone,color: Colors.black,),
                        ),
                      ),
                      Container(
                        width: 120,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Colors.blueGrey,
                          onPressed: (){
                            validation();

                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Already have an account ? ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueGrey,
                    onPressed: (){
                      setState(() {
                        Navigator.pushNamed(context, login.id);
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
