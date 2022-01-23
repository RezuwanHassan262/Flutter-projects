import 'package:flutter/material.dart';
import 'package:myapp/Pages/details.dart';
import 'package:myapp/Pages/home.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

