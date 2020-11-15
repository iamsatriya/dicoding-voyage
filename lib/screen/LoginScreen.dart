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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppHeader(),
            Form(
              key: formKey,
              child: Column(
                children: [
                  LoginInput(
                    icon: Icon(Icons.perm_identity),
                    label: 'Username',
                    onSaveInput: (value) => username = value,
                  ),
                  LoginInput(
                    icon: Icon(Icons.lock),
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
                  Text('Don\'t have an account?'),
                  FlatButton(onPressed: (){}, child: Text('Register here!')),
                  SizedBox(
                    width: double.infinity,
                    height: 64.0,
                    child: RaisedButton(
                        child: Text('Log in'),

                        onPressed: (){
                      if(formKey.currentState.validate()){
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
    );
  }
}
