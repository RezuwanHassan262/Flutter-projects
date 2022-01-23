import 'package:flutter/material.dart';
import 'package:r1/Pages/HomePage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
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
              child: Text("About page",
              style: TextStyle(
                fontSize: 34.0,
              ),),
            )),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, 
            child: Text("Go back",
            style: TextStyle(
              fontSize: 20.0, 
            ),
            ),
            ),
        ],
      ),
    );
  }
}
