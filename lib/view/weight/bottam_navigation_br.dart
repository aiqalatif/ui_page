import 'package:flutter/material.dart';
import 'package:ui_flutter/view/home_screen.dart';
import 'package:ui_flutter/view/weight/const.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<IconData> iconList = [
    Icons.home,
    Icons.business_center_outlined,
    Icons.badge,
    Icons.person,
  ];

  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(iconList[0]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(iconList[1]),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(iconList[2]),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            icon: Icon(iconList[3]),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: color,
        unselectedItemColor: unseletedColor,
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
