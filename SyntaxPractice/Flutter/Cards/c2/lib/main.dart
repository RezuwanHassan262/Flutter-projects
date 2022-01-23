import "package:flutter/material.dart";

void main(){
  runApp(c2());
}

class c2 extends StatelessWidget {
  const c2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 2.0,
          title: Center(
            child: Text("Gym Exercises",
            style: TextStyle(
              wordSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.yellowAccent,
            ),
            ),
            ),
        ),
      ),
    );
  }
}