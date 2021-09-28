import 'package:clinic_app/components/blue_box.dart';
import 'package:clinic_app/screens/login_screen.dart';
import 'package:clinic_app/components/white_box.dart';
import 'package:flutter/material.dart';
import 'package:clinic_app/components/already_have_an_account_check.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              print("Back");

              Navigator.pop(context);
              //Implement logout functionality
            }),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 29.0,
                  ),
                  Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    onPress: () {
                      print("SignIn");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30.0,
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
                    height: 24.0,
                  ),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF373639),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  InternationalPhoneNumberInput(
                    initialValue: PhoneNumber(isoCode: 'MY'),
                    textStyle: TextStyle(color: Colors.black),
                    selectorTextStyle: TextStyle(color: Colors.black),
                    inputDecoration: InputDecoration(
                      hintText: 'Enter your mobile number',
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
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      leadingPadding: 10.0,
                      trailingSpace: false,
                    ),
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
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
                  Text(
                    'Confirm Password',
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
                    height: 20.0,
                  ),
                  BlueBox(
                    label: 'Sign Up',
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Align(
                    child: Column(
                      children: <Widget>[
                        Text('By clicking sign up you are agreeing to the'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              child: Text(
                                'Term of use ',
                                style: TextStyle(
                                  color: Color(0xFF384DFE),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                print("Term of use");
                              },
                            ),
                            Text('and the '),
                            GestureDetector(
                              onTap: () {
                                print("Privacy Policy");
                              },
                              child: Text(
                                'Privacy policy',
                                style: TextStyle(
                                  color: Color(0xFF384DFE),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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

// IntlPhoneField(
//   style: TextStyle(color: Colors.black),
//   dropDownArrowColor: Colors.black,
//   countryCodeTextColor: Colors.black,
//   dropdownDecoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(6.0),
//     color: Colors.white,
//     border: Border.all(
//       color: Colors.black,
//       width: 1.0,
//     ),
//   ),
//   initialCountryCode: 'MY',
//   decoration: InputDecoration(
//     hintText: 'Enter your mobile number',
//     hintStyle: TextStyle(color: Colors.grey),
//     filled: true,
//     fillColor: Colors.white,
//     contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black, width: 1.0),
//       // borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black, width: 2.0),
//       // borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//   ),
//   onChanged: (phone) {
//     print(phone.completeNumber);
//   },
// ),

// TextField(
//   style: TextStyle(color: Colors.black),
//   onChanged: (value) {
//     //Do something with the user input.
//   },
//   decoration: InputDecoration(
//     hintText: 'Enter your mobile number',
//     hintStyle: TextStyle(color: Colors.grey),
//     filled: true,
//     fillColor: Colors.white,
//     contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black, width: 1.0),
//       // borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black, width: 2.0),
//       // borderRadius: BorderRadius.all(Radius.circular(32.0)),
//     ),
//   ),
// ),

// LogInDivider(),
// SizedBox(
//   height: 26.0,
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: <Widget>[
//     SocialBox(
//       color: Color(0xFF36589E),
//       label: 'Facebook',
//       iconSrc: 'assets/icons/facebook.svg',
//     ),
//     SizedBox(
//       width: 26.0,
//     ),
//     SocialBox(
//       color: Color(0xFFEB4132),
//       label: 'Google',
//       iconSrc: 'assets/icons/google.svg',
//     ),
//   ],
// ),
