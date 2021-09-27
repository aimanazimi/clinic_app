import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialBox extends StatelessWidget {
  final String? label;
  final Color? color;
  final String? iconSrc;

  const SocialBox({
    @required this.color,
    this.label,
    this.iconSrc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: color,
        // borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
            onPressed: () {
              print(label);
              //Implement login functionality.
            },
            minWidth: 160.0,
            height: 48.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '$iconSrc',
                  width: 22.0,
                  height: 20.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  '$label',
                ),
              ],
            )),
      ),
    );
  }
}
