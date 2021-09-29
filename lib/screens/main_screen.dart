import 'package:clinic_app/screens/home_screen.dart';
import 'package:clinic_app/screens/member_screen.dart';
import 'package:clinic_app/screens/settings_screen.dart';
import 'package:clinic_app/screens/update_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int btmNaviBarIndex = 0;
  final screens = [
    HomeScreen(),
    UpdatesScreen(),
    MemberScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: screens[btmNaviBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: btmNaviBarIndex,
            onTap: (index) {
              setState(() {
                btmNaviBarIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: 'New',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Member',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.red[800],
          ),
        ),
      ),
    );
  }
}
