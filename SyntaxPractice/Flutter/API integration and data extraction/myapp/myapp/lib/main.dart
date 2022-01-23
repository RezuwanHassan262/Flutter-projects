import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import "../config.dart";
import "pages/homepage.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage()
    );
  }
}