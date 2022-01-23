import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

void main(){
  runApp(p3());
}

class p3 extends StatelessWidget {
  const p3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff009DAE),
          title: Text("This is Appbar standing",
          style: TextStyle(
            color
          ),)
        ), 
      ),
      
    );
  }
}