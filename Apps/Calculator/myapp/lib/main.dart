import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("EXP position",
            textAlign: TextAlign.right,)
          
          //results

          //keypad
          
          
          ]
        ),
      ),
    );
  }
}