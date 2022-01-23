import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Tasbih",
            style: TextStyle(
              fontSize: 40.0
            ),
            )
          ),
        ),

        body: Container(
          width: double.infinity,
          
          
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap:() {setState(() {
                count++;
              });} ,
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 80.0,
                child: Text("$count",
              style: TextStyle(
                fontSize:50.0,

              ),),
                ),
            ),
          ],
        )


        ),

        floatingActionButton: ElevatedButton(onPressed: () {setState(() {
            count++;
          });}, child: Text("$count",
          style: TextStyle(
            fontSize:50.0,

          ),),
          )


      ),
      
    );
  }
}

