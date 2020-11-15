import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final TextEditingController textfieldController = TextEditingController();
  final Function(String) onChangeInput;
  final Function showHidePassword;
  final String label;
  final Icon icon;
  final bool isHidePassword;

  LoginInput(
      {Key key,
      @required this.onChangeInput,
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
            TextField(
              controller: textfieldController,
              // TODO: fix onChange for call onChangeInput with parameter
              //onChanged: onChangeInput('text'),
              onEditingComplete: () => onChangeInput(textfieldController.text),
              obscureText: label.toLowerCase() == 'password' && isHidePassword
                  ? true
                  : false,
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
