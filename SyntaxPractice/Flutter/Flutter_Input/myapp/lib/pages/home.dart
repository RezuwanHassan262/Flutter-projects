import 'package:flutter/material.dart';
import 'package:myapp/Pages/details.dart';

class Home extends StatelessWidget {

  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Age verifier")),),
      body:Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             TextField(
               controller:ageController,
               cursorColor: Colors.black,
               decoration: InputDecoration(
                 hintText: "Insert your age",
                 border: OutlineInputBorder(
                   borderRadius:BorderRadius.all(Radius.circular(10.0)) ,
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(15.0),
               child: ElevatedButton(onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (counter) => Details(
                   age: ageController.text,
                 )
                 )
                 );
                 

               }, child: Text("Submit")),
             )
            ],),
        )
      ),
    );
  }
}