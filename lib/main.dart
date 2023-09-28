import 'package:fe_dmi/screens/MainMenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DMIApp());
}

class DMIApp extends StatelessWidget {
  const DMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MDI app',
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    );
  }
}
