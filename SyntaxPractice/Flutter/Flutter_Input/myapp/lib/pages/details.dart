import 'package:flutter/material.dart';
import 'package:myapp/Pages/home.dart';

class Details extends StatelessWidget {
  String age;

  Details(
    {
    Key? key,required this.age,}) : super(key: key);

  String verify(String age){
    int ageInt = int.parse(age);
    if (ageInt >80){
      return "You are very old";
    }
    else if((ageInt >40) && (ageInt <60)){
      return "You are middle age";
    }
    else if((ageInt >19) && (ageInt <40)){
      return "You are adult";
    }
    else if((ageInt >10) && (ageInt <19)){
      return "You are teen";
    }
    else if(ageInt <10){
      return "You are a kid";
    }
    return "Invalid age";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Age verifier")),),
      body:Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Text("$age"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("${verify(age)}"),
                )
              ],),
          )
        ),
      ),
    );
  }
}