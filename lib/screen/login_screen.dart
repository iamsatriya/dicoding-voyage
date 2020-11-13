import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /* Background image cara 1
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/login-bg.jpg'),
              fit: BoxFit.cover,
            )),
          ), */
          Image(
            image: AssetImage('images/login-bg.jpg'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Flexible(
                  flex: 2,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            'Voyage',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          'Travel Community App',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        color: Colors.black54,
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        color: Colors.black54,
                      ),
                      Expanded(
                        child: SafeArea(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'Log in',
                                  style: TextStyle(fontSize: 18),
                                ),
                                color: Colors.orangeAccent,
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
