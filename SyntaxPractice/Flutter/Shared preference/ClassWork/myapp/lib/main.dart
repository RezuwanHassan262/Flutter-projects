import "package:shared_preferences/shared_preferences.dart";
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myNote = "Empty";
  TextEditingController noteTextController = TextEditingController();

  Future <void> setNotes(String note) async{
    SharedPreferences handle = await SharedPreferences.getInstance();
    handle.setString("my_note", note);
    print("Text saved");
  
  }

  Future<void> getNote() async {
    SharedPreferences handle = await SharedPreferences.getInstance(); 
    setState(() {
      myNote = handle.getString("my_note")!;
    });
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
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(myNote,
                style: TextStyle(
                  fontSize: 40.0
                ),),
              
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: noteTextController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder()),
                  ),
                ),

                ElevatedButton(onPressed: () {
                  setNotes(noteTextController.text);
                }, 
                child: Text("Upload")),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: () {
                    getNote();
                  }, 
                  child: Text("Read")),
                ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}