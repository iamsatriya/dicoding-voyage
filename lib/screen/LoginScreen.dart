import 'package:flutter/material.dart';
import 'package:voyage/widget/AppHeader.dart';
import 'package:voyage/widget/LoginInput.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  bool isHidePassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/login-bg.jpg'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppHeader(),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      LoginInput(
                        icon: Icon(Icons.perm_identity, color: Colors.orangeAccent,),
                        label: 'Username',
                        onSaveInput: (value) => username = value,
                      ),
                      LoginInput(
                        icon: Icon(Icons.lock, color: Colors.orangeAccent,),
                        label: 'Password',
                        onSaveInput: (value) => password = value,
                        isHidePassword: isHidePassword,
                        showHidePassword: () {
                          setState(() {
                            isHidePassword = !isHidePassword;
                          });
                        },
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text('Don\'t have an account?', style: TextStyle(fontWeight: FontWeight.w600),),
                      FlatButton(
                          onPressed: () {}, child: Text('Register here!', style: TextStyle(fontWeight: FontWeight.w800),)),
                      SizedBox(
                        width: double.infinity,
                        height: 64.0,
                        child: RaisedButton(
                            child: Text('Log in', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18.0),),
                            color: Colors.orangeAccent,
                            onPressed: () {
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                              }
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
