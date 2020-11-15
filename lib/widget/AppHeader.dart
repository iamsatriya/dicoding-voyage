import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: Center(
        child: Column(
          children: [
            Text(
              'VOYAGE',
              style: TextStyle(
                  fontSize: 64.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              'Your Travel Buddy',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
