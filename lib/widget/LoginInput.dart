import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final Function(String) onSaveInput;
  final Function showHidePassword;
  final String label;
  final Icon icon;
  final bool isHidePassword;

  LoginInput(
      {Key key,
      @required this.onSaveInput,
      @required this.label,
      @required this.icon,
      this.isHidePassword = true,
      this.showHidePassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.6),
      padding: EdgeInsets.all(8.0),
      height: 64.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      validator: (value) =>
                          value.isEmpty ? 'Please enter your $label' : null,
                      obscureText: label.toLowerCase() == 'password' && isHidePassword
                          ? true
                          : false,
                      onSaved: (value) => onSaveInput(value),
                      decoration: InputDecoration.collapsed(hintText: 'Enter your $label'),
                    ),
                  ),
                  Visibility(
                    visible: label.toLowerCase() == 'password' ? true : false,
                    child: IconButton(
                      icon: Icon(
                          isHidePassword ? Icons.visibility : Icons.visibility_off),
                      onPressed: showHidePassword,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
