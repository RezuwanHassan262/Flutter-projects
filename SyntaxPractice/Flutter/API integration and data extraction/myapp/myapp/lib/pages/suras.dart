import "../config.dart";
import 'package:flutter/material.dart';
import "homepage.dart";

class ReadSurahPage extends StatelessWidget {
  final String name;
  final String id;
  const ReadSurahPage({ Key? key, required this.name,required this.id }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text(name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold))),
        ),
      body: Center(
        child: Text(id,
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 40)),)
    );
  }
}