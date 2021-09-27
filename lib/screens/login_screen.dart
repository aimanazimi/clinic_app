import 'package:clinic_app/screens/registration_screen.dart';
import 'package:clinic_app/screens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:clinic_app/already_have_an_account_check.dart';
import 'package:clinic_app/white_box.dart';
import 'package:clinic_app/blue_box.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 10.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 44.0,
                    width: 44.0,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  Align(
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF373639),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
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
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF373639),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  WhiteBox(
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  BlueBox(
                    label: 'Sign In',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: () {
                        print("ForgetPassword");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF384DFE),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  AlreadyHaveAnAccountCheck(
                    login: true,
                    onPress: () {
                      print("Signup");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SizedBox(
// height: 38.0,
// ),
// LogInDivider(),
// SizedBox(
// height: 26.0,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// SocialBox(
// color: Color(0xFF36589E),
// label: 'Facebook',
// iconSrc: 'assets/icons/facebook.svg',
// ),
// SizedBox(
// width: 26.0,
// ),
// SocialBox(
// color: Color(0xFFEB4132),
// label: 'Google',
// iconSrc: 'assets/icons/google.svg',
// ),
// ],
// ),
