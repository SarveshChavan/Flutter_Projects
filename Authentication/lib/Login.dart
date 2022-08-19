import 'package:flutter/material.dart';
import 'Signup.dart';

class login extends StatefulWidget {
  static String id='Login';

  @override
  State<login> createState() => _loginState();
}
final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);
bool obsText=true;
class _loginState extends State<login> {
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
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                        hintText: 'Username',
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
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      validator: (value){
                        if(value==''){
                          return 'Please Fill Password';
                        }
                        else if(!(value?.length==6)){
                          return 'Password should be of 6 character';
                        }
                        return '';
                      },
                      obscureText: obsText,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon:GestureDetector(
                          onTap: (){
                            setState((){
                              obsText=!obsText;
                            });
                            FocusScope.of(context).unfocus();
                          },
                          child:Icon(
                            obsText==true?Icons.visibility:Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color:Colors.lightBlue,
                      onPressed:(){

                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Dont have an account ? ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Colors.lightBlue,
                          onPressed: (){
                            setState(() {
                              Navigator.pushNamed(context, signup.id);
                            });
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
