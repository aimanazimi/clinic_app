import 'package:clinic_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:clinic_app/screens/splash_screen.dart';
import 'package:clinic_app/screens/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Clinic App rev1',
    //   theme: ThemeData(
    //     primarySwatch: Colors.cyan,
    //   ),
    //   home: const IntroScreen(),
    // );
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: SplashScreen());
        } else {
          return MaterialApp(
            title: 'Clinic App',
            theme: ThemeData(
              primarySwatch: Colors.cyan,
              backgroundColor: kBackgroundColour,
            ),
            home: const IntroScreen(),
          );
        }
      },
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 4));
  }
}
