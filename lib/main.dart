import 'package:flutter/material.dart';
import 'package:voyage/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voyager',
      home: LoginScreen(),
    );
  }
}
