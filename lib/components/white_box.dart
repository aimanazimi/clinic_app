import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final TextInputType keyboardType;
  final String? hintText;
  final bool obscureText;

  const WhiteBox({
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle(color: Colors.black),
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          // borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          // borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
