import 'package:myapp/introscreen.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({ Key? key }) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  
  static var myNewFontWhite15 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:15));
  static var myNewFontWhite25 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:25));
  static var myNewFontWhite35 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.black,fontSize:30));
  static var myNewFontBlack35 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.black,fontSize:35));
    

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff06070a),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Container(
                    child: Text("Tic-Tac-Toe",
                    style: myNewFontWhite25),
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  child: AvatarGlow(endRadius: 190, 
                  duration: Duration(seconds: 2), 
                  repeatPauseDuration: Duration(seconds: 1), 
                  startDelay: Duration(seconds: 1), 
                  glowColor: Colors.white, 
                  repeat: true, 
                  child:Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                        ),
                        shape :BoxShape.circle
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff06070a),
                        child: ClipOval(
                          child: Image.asset("Assets/images/is2.png",
                          //color: Colors.transparent,
                          fit: BoxFit.cover,
                           width: 180.0,
                           height: 180.0),
                        ),
                        radius: 90.0,
                      ),
                    ),
                  ),
                  ),
                ),
              ),

                                
            Expanded(
              child: Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Container(
              child: Center(
                child: Text("© Created by Rezuwan",
                style: myNewFontWhite15),
              ),
                ),
                  ),
                    ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(30),  
                      child: Center(
                        child: Text("Play",
                        style: myNewFontBlack35),
                      ),
                    ),
                  ),
                  ),
              ),
            )



            ],
          ),
        ),
      ),
    );
  }
}