import 'package:flutter/material.dart';

import 'liquid_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bicard',
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LiquidHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
