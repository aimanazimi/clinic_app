import 'package:clinic_app/components/navigation_arrow.dart';
import 'package:clinic_app/components/reusable_button.dart';
import 'package:clinic_app/constants.dart';
import 'package:clinic_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({Key? key}) : super(key: key);

  @override
  _UpdatesScreenState createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColour,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: Text(
                'List all the current promotion or update such as Covid-19 SOP',
                style: TextStyle(fontSize: 60),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    NavigationArrow(
                      title: 'Promo 1',
                      onTap: () {
                        print('Promo 1 tapped');
                      },
                      arrowcolor: Colors.blue[900],
                    ),
                    NavigationArrow(
                      title: 'Promo 2',
                      onTap: () {
                        print('Promo 2 tapped');
                      },
                      arrowcolor: Colors.blue[900],
                    ),
                    NavigationArrow(
                      title: 'Update 1',
                      onTap: () {
                        print('Update tapped');
                      },
                      arrowcolor: Colors.blue[900],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableButton(
                          title: 'NEXT',
                          boxColor: Color(0xFF384DFE),
                          width: 100,
                          height: 50,
                          onTap: () {
                            print('next button tapped');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          },
                        ),
                        Row(
                          children: [
                            Checkbox(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.black),
                                value: checkBoxValue,
                                onChanged: (value) {
                                  setState(() {
                                    checkBoxValue = value!;
                                  });
                                }),
                            const Text(
                              "Don't show this \nupdate again",
                            )
                          ],
                        )
                      ],
                    ), //next button + tick box
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
