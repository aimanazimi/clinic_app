import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  final String? label;
  final void Function()? onPressed;

  const BlueBox({
    Key? key,
    this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xFF384DFE),
        // borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 48.0,
          child: Text('$label'),
        ),
      ),
    );
  }
}
