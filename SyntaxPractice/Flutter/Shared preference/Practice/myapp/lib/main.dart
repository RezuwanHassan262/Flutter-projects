import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController noteTextController = TextEditingController();
  String myNote = "Empty";

  Future<void> setNote(String note) async{
    SharedPreferences handle = await SharedPreferences.getInstance();
    handle.setString("my_note", note);
    print("Note has been saved");
    setState(() {
      myNote = note; 
    });
    }

  Future<void> getNote () async{
    SharedPreferences handle = await SharedPreferences.getInstance();
    //String? note = handle.getString("my_note");
        setState(() {
          myNote = handle.getString("my_note")!;
    });
    print(myNote);
    }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNote();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Shared preference')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(myNote,
              style: TextStyle(
                fontSize: 44.0,
                fontWeight: FontWeight.bold 
              ),),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: noteTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder() ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: () {
                  setNote(noteTextController.text);
                  //print(noteTextController.text);
                }, child: Text("Update")),
              ),
            
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: () {
                  getNote();
                }, child: Text("Read Note")),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}