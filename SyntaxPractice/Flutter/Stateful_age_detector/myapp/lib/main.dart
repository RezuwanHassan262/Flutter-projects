import 'dart:html';

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
  TextEditingController ageInputController = TextEditingController();
  int age = 0;
  String result = "Boo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Age detector 5000",
            style: TextStyle(
              fontSize: 40.0
            ),
            )
          ),
        ),

        body: Container(
          width: double.infinity,
          height: double.infinity,
          
          
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Age Detector",
            style: TextStyle(
              fontSize: 30.0
            ),
               ),

            Padding(
              padding: const EdgeInsets.only(top:10.0,bottom:10.0,left:350,right:350),
              child: TextField(
                controller: ageInputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
                ),
              ),
            ),            

          ElevatedButton(onPressed: () {
            try { 
            age = int.parse(ageInputController.text);
            age = age;
            }
            catch (e) {
              print(e);
              int age = 0;
            }
            setState(() {
              
              if(age < 5){
                result = "Baby 👶";
              }
              else if (age <13){
                result = "Kid 👦🧒";
              }
              else if (age <19){
                result = "Teenager 🧑 👧";
              }
              else if (age <40){
                result = "Adult 👨‍🦰 👩‍🦱";
              }
              else{
                result = "Old 🎅 🤶";
              }
            });

          }, child: Text("Detect",style: TextStyle(fontSize: 20.0))),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("${result == "Boo"? "Nothing detected":"You are a $result" }",style: TextStyle(fontSize: 30.0)),
          )  

          ],
        )


        ),

        


      ),
      
    );
  }
}

