import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int top = 50;
  int bot = 50;
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tapping battle',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          floatingActionButton: top>95 || bot>95? FloatingActionButton(onPressed: () {
          setState(() {
            top = 50;
            bot = 50;
          });
          }, 
          child: Icon(Icons.refresh)):Text("")
          ,

          body: Stack(
            children: [
               
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    
                    Expanded(
                      flex: top,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                          top++;
                          bot--;
                          });
                        },
                        child: Container(
                          color: Colors.red
                        ),
                      )),

                    Expanded(
                      flex: bot,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                          top--;
                          bot++;
                          });
                        },
                        child: Container(
                          color: Color(0xff8408A3),
                        ),
                      )),

                      
                  ],
                ),
              
              
              ),
            
              top > 95 || bot > 95? Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue.withOpacity(1),
                child: Center(
                  child:Text( 
                    top>95? "Red won!":"Purple won!",
                    style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold))
                    
                ),
              ) : Text(""),
            
            ],
          ),
        ),
      ),
    );
  }
}