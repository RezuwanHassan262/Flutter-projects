import 'package:flutter/material.dart';
import 'package:myapp/screens/msg.dart';

class Homepage extends StatelessWidget {
   TextEditingController nameTextController = TextEditingController();

    Homepage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("This is appbar",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold))),
        backgroundColor: Colors.amberAccent,
      ),

      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(name)

            Text("Greetings",
            style: TextStyle(
              fontSize: 30.0,
            ),),

            TextField(
              controller: nameTextController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width:3.0),)
              ),
              cursorHeight: 30.0,
              cursorColor: Colors.black,
            ),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MessagePage(name:nameTextController.text)));
            }, 
            child: Text("Send")
            )

          ],
        ),
      ),
    );
  }
}