import "package:flutter/material.dart";

class MessagePage extends StatelessWidget {
  final String name;

  const MessagePage({ Key? key,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            Text("$name",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            Text("Hope you are doing",
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