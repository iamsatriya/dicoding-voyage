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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          Column(
            children: [
              LoginInput(
                icon: Icon(Icons.perm_identity),
                label: 'Username',
                onChangeInput: (String val) {
                  setState(() {
                    username = val;
                    print(username);
                  });
                },
              ),
              LoginInput(
                icon: Icon(Icons.lock),
                label: 'Password',
                onChangeInput: (String val) {
                  setState(() {
                    password = val;
                    print(password);
                  });
                },
                isHidePassword: isHidePassword,
                showHidePassword: () {
                  setState(() {
                    isHidePassword = !isHidePassword;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
