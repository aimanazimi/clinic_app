import 'package:flutter/material.dart';

class NavigationArrow extends StatelessWidget {
  const NavigationArrow({
    this.title,
    this.arrowcolor,
    this.onTap,
  });

  final String? title;
  final Color? arrowcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: TextStyle(fontSize: 24),
        ),
        InkWell(
          onTap: onTap,
          child: Icon(
            Icons.play_arrow,
            color: arrowcolor,
            size: 50,
          ),
        )
      ],
    );
  }
}
