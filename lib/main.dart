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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LiquidHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}