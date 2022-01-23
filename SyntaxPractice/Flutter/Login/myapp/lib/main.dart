import 'package:flutter/material.dart';
import 'components/homepage.dart';
import 'components/details.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      
    );
  }
}

