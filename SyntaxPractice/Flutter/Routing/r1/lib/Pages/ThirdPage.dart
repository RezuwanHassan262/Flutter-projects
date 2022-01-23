import 'package:flutter/material.dart';
import 'package:r1/Pages/HomePage.dart';
import 'package:r1/Pages/SecondPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page bar")
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text("Third page bar",
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
              child: Text("Go to Second page",
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
