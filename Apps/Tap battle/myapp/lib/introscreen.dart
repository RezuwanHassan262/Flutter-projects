import 'dart:ui';
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
  
  static var oswald10 = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white,fontSize:10));
  static var oswald25 = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white,fontSize:25));
  static var oswald60 = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white,fontSize:60));
  static var OpenSans25 = GoogleFonts.openSansCondensed(
    textStyle: TextStyle(color: Colors.white,fontSize:25));
  static var Roboto25 = GoogleFonts.roboto(
    textStyle: TextStyle(color: Colors.white,fontSize:25));
  static var Poppins30 = GoogleFonts.poppins(
    textStyle: TextStyle(color: Colors.white,fontSize:30));
  static var PS235 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:35));
   static var Mpp50 = GoogleFonts.mochiyPopPOne(
    textStyle: TextStyle(color: Colors.white,fontSize:50,fontWeight: FontWeight.bold));   
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
              colors: [Color(0xff780206),Color(0xff2b3990)],
              radius: 0.7,
//              focalRadius: 10.0
              )
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: Container(
                          child: Text("Tap battle",
                          style: oswald60),
                        ),
                      ),
                      Container(
                        child: Text("Ready, Set, TAP!!!!",
                        style: Roboto25),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:60.0),
                      child: AvatarGlow(endRadius: 200, 
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
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
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
                  ),
                ),

                                  
              Expanded(
                child: Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                child: Center(
                  child: Text("© Created by Rezuwan",
                  style: Poppins30),
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
                      decoration: BoxDecoration(
                        color: Color(0xff4286f4),
                        // gradient: LinearGradient(
                        //   colors: [Color(0xffbe1e2d),Color(0xff4286f4),Color(0xffbe1e2d)],
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        // ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:10,bottom:15),  
                        child: Center(
                          child: Text("Play",
                          style: Mpp50),
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
      ),
    );
  }
}