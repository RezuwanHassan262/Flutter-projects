import 'package:flutter/material.dart';
import 'package:r1/Pages/SecondPage.dart';
import 'package:r1/Pages/ThirdPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page bar")
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text("Home page",
              style: TextStyle(
                fontSize: 34.0,
              ),),
            )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
              child: Text("Go to second page",
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
              child: Text("Go to third page",
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
