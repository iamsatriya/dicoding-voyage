import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: Center(
        child: Column(
          children: [Text('Voyage', style: TextStyle(fontSize: 64.0),), Text('Your Travel Buddy', style: TextStyle(fontSize: 12.0),)],
        ),
      ),
    );
  }
}
