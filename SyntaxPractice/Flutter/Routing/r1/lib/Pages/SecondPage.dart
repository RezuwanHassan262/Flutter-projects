import 'package:flutter/material.dart';
import 'package:r1/Pages/HomePage.dart';
import 'package:r1/Pages/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page bar")
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text("About page",
              style: TextStyle(
                fontSize: 34.0,
              ),),
            )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Text("Go back",
              style: TextStyle(
                fontSize: 20.0, 
              ),
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdPage())
                );
              },
              child: Text("Go to Third page",
              style: TextStyle(
                fontSize: 20.0, 
              ),
              ),
              ),
            ),


        ],
      ),
    );
  }
}
