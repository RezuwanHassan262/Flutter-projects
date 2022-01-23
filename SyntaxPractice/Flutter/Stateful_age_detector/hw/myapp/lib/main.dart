import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marks to grade converter',
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff2980B9),
                  Color(0xFF6DD5FA),
                  Color(0xFFFFFFFF)
                ],
              )),

            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Grade Detector",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Insert your marks below",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:250,right:250),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      gapPadding:5.0,
                      ),
                    ),
                    cursorWidth:2.0,
                    cursorHeight:2.0
                  ),
                ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {}, child: Text("Enter")),
              )

                


      
      
      
              ],
            ),
          ), 
      
      
        ),
      ),
    );
  }
}