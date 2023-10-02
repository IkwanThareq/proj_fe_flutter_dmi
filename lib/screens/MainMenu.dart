import 'package:fe_dmi/screens/BottomSheetModal.dart';
import 'package:fe_dmi/screens/HomeScreen.dart';
import 'package:fe_dmi/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

// ini code yang bene sebelumnya
class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    // BottomSheetModal(),
    const LoginScreen(),
  ];

  // void _showModalBottomSheet(BuildContext context) {
  //   showModalBottomSheet<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: 200,
  //         child: Center(
  //           child: Text('This is a Modal Bottom Sheet'),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                // if (_currentIndex == 1) {
                //   _showModalBottomSheet(context);
                // }
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Login",
              ),
            ],
          ),
          Positioned(
            bottom: 30.0,
            child: FloatingActionButton(
              onPressed: () {
                _showModalBottomSheet(context);
              },
              child: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit'),
              onTap: () {
                // Logika yang ingin Anda jalankan ketika opsi "Edit" dipilih
                Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Delete'),
              onTap: () {
                // Logika yang ingin Anda jalankan ketika opsi "Delete" dipilih
                Navigator.pop(context); // Menutup Bottom Sheet setelah dipilih
              },
            ),
          ],
        ),
      );
    },
  );
}