import "package:flutter/material.dart";

class Pass extends StatelessWidget {
  final String pass;

  const Pass({ Key? key,required this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello Rushdi",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            Text("$pass",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            Text("Glad to see you again",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            ),


          ],
          ),
      ),
    );
  }
}