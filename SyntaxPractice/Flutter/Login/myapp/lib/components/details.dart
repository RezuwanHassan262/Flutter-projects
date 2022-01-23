import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String? data;

  const Details({
    Key? key, required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Details page",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Text("$data"),


    ),
    );
  }
}