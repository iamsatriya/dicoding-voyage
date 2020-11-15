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
    return Row(
      children: [
        icon,
        Flexible(
            child: Column(
          children: [
            Text(label),
            TextFormField(
              validator: (value) =>
                  value.isEmpty ? 'Please enter your $label' : null,
              obscureText: label.toLowerCase() == 'password' && isHidePassword
                  ? true
                  : false,
              onSaved: (value) => onSaveInput(value),
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
    );
  }
}
