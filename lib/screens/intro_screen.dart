import 'package:clinic_app/constants.dart';
import 'package:clinic_app/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:clinic_app/components/reusable_button.dart';
import 'registration_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int activeIndex = 0;

  final List<String> imageLists = [
    'assets/images/welcome.jpg',
    'assets/images/promotion.png',
    'assets/images/luckydraw.png',
    'assets/images/comingsoon.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColour,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: imageLists.length,
                  options: CarouselOptions(
                      aspectRatio: 1,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      pauseAutoPlayOnTouch: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }),
                  itemBuilder: (context, index, realIndex) {
                    final imageList = imageLists[index];
                    return buildImage(imageList, index);
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 430,
                    ),
                    buildIndicator(),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 25,
                    ),
                    ReusableButton(
                      title: 'Register',
                      boxColor: Color(0xFF384DFE),
                      width: 120,
                      height: 60,
                      onTap: () {
                        print('register tapped');

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already our Family?',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF384DFE)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                          onPressed: () {
                            print('sign in tapped');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Language',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF384DFE)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          child: Text(
                            'ENG',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue[900]),
                          ),
                          onPressed: () {
                            print('language ENG tapped');
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '/',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF384DFE)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          child: Text(
                            'BM',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue[900]),
                          ),
                          onPressed: () {
                            print('language BM tapped');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imageList, int index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 6),
        color: Colors.grey,
        child: Image.asset(
          imageList,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageLists.length,
        effect: const SlideEffect(),
      );
}
