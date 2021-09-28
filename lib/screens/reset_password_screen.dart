import 'package:clinic_app/components/blue_box.dart';
import 'package:clinic_app/components/white_box.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 26.0,
            color: Color(0xFFD0C9D6),
            onPressed: () {
              print('Back');

              Navigator.pop(context);
              //Implement logout functionality
            }),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 29.0,
                  ),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  Text(
                    'Please enter your email below to receive your password reset instructions.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF373639),
                    ),
                  ),
                  SizedBox(
                    height: 49.0,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF373639),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  WhiteBox(
                    hintText: 'Enter your email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 49.0,
                  ),
                  BlueBox(
                    label: 'Send Email',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
