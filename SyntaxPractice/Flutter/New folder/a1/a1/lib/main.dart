import 'package:flutter/material.dart';

//import 'Component/My_Card_view.dart';

void main(){
  runApp(a1());
}

class a1 extends StatelessWidget {
  const a1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text("Contacts")
            ),
        ),

        body: Container(
          height: double.infinity,
          weight: double.infinity,
          child: ListView(
            children: [
              Card(
              child: ListTile(

              ),
            ),

            ],
              ),
          ),
        ),

      ),
    );
  }
}