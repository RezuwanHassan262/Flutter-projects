import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

void main(){
  runApp(BasicTexts());
}

class BasicTexts extends StatelessWidget {
  const BasicTexts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Basic text style practice",
          style: TextStyle(
            fontFamily: "san-sarif",
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ), 
        ),

        body: Container(
          color: Colors.purpleAccent,
          width: double.infinity,
          height: double.infinity,
          child: Row(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                width: 50.0,
                color: Colors.tealAccent,
                child: Text("Row 1 element 1",
                style: TextStyle(
                fontFamily: "comics sans",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ), 
            )
              ),
        ),


            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                width: 50.0,
                color: Colors.redAccent,
                child: Text("Row 1 element 2",
                style: TextStyle(
                fontFamily: "comics sans",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ), 
            )
              ),
        ),


            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                width: 50.0,
                color: Colors.yellowAccent,
                child: Text("Row 1 element 3",
                style: TextStyle(
                fontFamily: "comics sans",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ), 
            )
          ),
        ),
      ],
    ),
 



  ),
          
            ),
              );

  }
}