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
      body: Column(
        children: [
          AppHeader(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.6),
            child: Form(
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
                  RaisedButton(
                      child: Text('Log in'),
                      onPressed: (){
                    if(formKey.currentState.validate()){
                      formKey.currentState.save();
                    }
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
