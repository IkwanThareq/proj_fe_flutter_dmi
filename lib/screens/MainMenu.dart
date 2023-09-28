import 'package:fe_dmi/screens/BottomSheetsScreen.dart';
import 'package:fe_dmi/screens/HomeScreen.dart';
import 'package:fe_dmi/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _currentIndex = 0;
  IconData _fabIcon = Icons.add;
   final List<Widget> _pages = [
    const HomeScreen(), 
    BottomSheetsScreen(),
    const LoginScreen(),
  ];

  void _changeFabIcon(){
    setState(() {
      _fabIcon = (_fabIcon == Icons.add) ? Icons.remove : Icons.add;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Login",
          ),
        ],
      ),
    );
  }
}