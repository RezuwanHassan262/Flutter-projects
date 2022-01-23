import "package:flutter/material.dart";
import "Components/CardTiles.dart";

void main(){
  runApp(App1());
}

class App1 extends StatelessWidget {
  const App1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(
            child: Text("Task Emphasizer",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40.0)
              ),
          ),
          ),
      
      body: Container(
        color: Color(0xfff0ec7a),
        height: double.infinity,
        width: double.infinity,
        child:ListView(
          scrollDirection: Axis.vertical,
          children: [

            Image.network("https://www.nicepng.com/png/detail/18-184908_discord-emoticon-happy-smiley-face-emoji.png"),


          ],
        ),

      ), 

          ),
      
    );
  }
}

