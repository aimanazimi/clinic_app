import 'package:clinic_app/components/navigation_arrow.dart';
import 'package:flutter/material.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Total Points ####',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Rewards',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Button(),
                Button(),
                Button(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Button(),
                Button(),
                Button(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            NavigationArrow(
              title: 'Previous Visit',
              onTap: () {},
              arrowcolor: Colors.red,
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              child: Container(
                child: Text(
                  'Redeemed Rewards',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    this.title = 'Rewards',
    this.boxcolor = Colors.red,
  });

  final String title;
  final Color boxcolor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: boxcolor,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 90.0,
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
