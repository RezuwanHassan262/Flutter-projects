import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int top = 50;

  int bottom = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea
      (
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child:Column(
              children: [
                Expanded(
                  flex: top,
                  child: InkWell(onTap: () {setState(() {
                    top++; bottom--;
                  });} , child: Container(color: Colors.red,)),),
      
                  Expanded(
                  flex: bottom,
                  child: InkWell(onTap: () {setState(() {
                    bottom++; top--;
                  });} , child: Container(color: Colors.purple,)),)
              ],
            )
          ),
        ),
      ),
    );
  }
}