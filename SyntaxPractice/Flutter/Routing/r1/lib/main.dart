import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/AboutPage.dart';

void main() {
  runApp(const r1());
}

class r1 extends StatelessWidget {
  const r1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

