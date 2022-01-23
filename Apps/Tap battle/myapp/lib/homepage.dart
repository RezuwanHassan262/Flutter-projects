import 'dart:math';
import 'package:myapp/introscreen.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int top = 30;
  int bot = 30;
  int p1 = 0;
  int p2 = 0;

  static var oswald35 = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white,fontSize:35,fontWeight:FontWeight.w400,
   decorationColor: Colors.black,decorationThickness:3.0));
  
  static var oswald45 = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white,fontSize:45,fontWeight:FontWeight.w400,
   decorationColor: Colors.black,decorationThickness:3.0));
  
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tapping battle',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
      
          floatingActionButton: top>55 || bot>55? Padding(
            padding: const EdgeInsets.only(bottom: 13.0),
            child: FloatingActionButton.extended(onPressed: () {
            setState(() {
              top = 30;
              bot = 30;
            });
            }, 
            backgroundColor: Colors.amber,
            elevation: 15.0,
            label: const Text('Play again',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            icon: Icon(Icons.refresh,color: Colors.black)),
          ):Text(""),
      
          body: Stack(
            children: [
               
              Stack(
                children: [
      
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      children: [

                        Expanded(
                          flex: top,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                              top++;
                              bot--;
                              if(top >55){p2+=1;}
                              else{}
                              });
                            },
                            child: Container(
                              color: Color(0xffbe1e2d)
                            ),
                          )),
      
                        Expanded(
                          flex: bot,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                              top--;
                              bot++;
                              if(bot >55){p1+=1;}
                              else{}
      
                              });
                            },
                            child: Container(
                              color: Color(0xff2b3990)
                            ),
                          )),
                          
                      ],
                    ),
                  
                  
                  ),
      
      
                 Center(
                   child: Divider(
                     color: Colors.black,
                     thickness: 3.0,
                   ),
                 ),
      
                  Row(
                    children: [
                      Container(
                        height:double.infinity,
                        width:50,
                        child: Image.asset("Assets/images/scores.png")),
      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Transform(
                              transform: Matrix4.identity()..rotateZ(pi) ,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top:4,right:6),
                                child: Text(p2.toString(),
                                style: oswald35),
                              ),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top:4,left:6),
                              child: Text(p1.toString(),
                              style: oswald35),
                            ),
      
                          ]
                        )
                    ],
                  ),                
      
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Transform(
                        transform: Matrix4.identity()..rotateZ(pi) ,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Text("Player 2",
                          style: oswald45),
                        ),
                      ),
                    ),
                  ],
                ),
      
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:10.0),
                        child: Text("Player 1",
                        style: oswald45),
                      ),
                    ),
                  ],
                )
      
                ],
              ),
      
              if (top > 55 || bot > 55) Container(
                
                height: double.infinity,
                width: double.infinity,
                child: top > 55?
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffbe1e2d),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("Assets/images/red.jpg"))
                  ),
                  child:Center(
                    child:Text( 
                      "Player 2 won!",
                      style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
                      
                  ),
                ):Container(
                   decoration: BoxDecoration(
                     color: Color(0xff2b3990),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("Assets/images/blue.jpg"))
                  ),
                  child: Center(
                    child:Text( 
                      "Player 1 won!",
                      style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
                  ),
                )
              ) else Text(""),
      
            ],
          ),
        ),
      ),

     
    
    );
    

    
  }


}