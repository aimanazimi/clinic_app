import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() onPress;

  AlreadyHaveAnAccountCheck({this.login = true, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: login ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Color(0xFFB0B0B0)),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Color(0xFF384DFE),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
