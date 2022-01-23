import 'package:myapp/introscreen.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool oTurn = true; //first player is "O"
  List<String> displayxo = ['','','','','','','','',''];
  int oScore = 0;
  int xScore = 0;
  int filledBoxes = 0;

  static var myNewFont10 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.black,fontSize: 10));
  static var myNewFont15 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.black,fontSize: 15));
  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:25));
  static var myNewFontWhite10 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:10));
  static var myNewFontWhite20 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:20));
  static var myNewFontWhite18 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:18));
  static var myNewFontWhite15 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:15));
  static var myNewFontWhite13 = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white,fontSize:13));
  static var myNewFontWhite80 = GoogleFonts.beVietnamPro(
    textStyle: TextStyle(color: Colors.white,fontSize:80));

    
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff06070a),
        body: Column(
          children: [
    
            Padding(
              padding: const EdgeInsets.only(top:40.0,bottom: 15.0),
              child: Expanded(
                flex:3,
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 8.0),
                          child: Text("Scoreboard",
                          style: myNewFontWhite),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,bottom: 3.0, left: 5,right:13),
                                  child: Column(
                                    children: [
                                      Text("Player 1",
                                      style: myNewFontWhite18),
    
                                    
    
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13.0),
                                        child: Text(oScore.toString(),
                                        style: myNewFontWhite13),
                                      ),
    
                                    ],
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,bottom: 3.0, left: 13,right:5),
                                  child: Column(
                                    children: [
                                      Text("Player 2",
                                      style: myNewFontWhite18),
                                      
                                 
    
                                      Padding(
                                        padding: const EdgeInsets.only(top:13.0),
                                        child: Text(xScore.toString(),
                                        style: myNewFontWhite13),
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                        ),
    
    
                      ],
                    ),),
                  
                )
                ),
            ),
    
            
            Expanded(
              flex:15,            
              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) , 
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          _tapped(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Center(
                              child: Text(displayxo[index],                
                              style: myNewFontWhite80),
                            ),
                          ),
                        ),
                      );
                    }),
                ),
              ),
            ),
    
    

              
            
          ],
        ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff06070a),
        child: Container(
          height: 70.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                          Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.only(top:3.0,bottom:4.0),
                child: Container(
                  child: Center(
                    child: Text(oTurn == true? "Player 1's turn!": "Player 2's turn!", 
                  style: myNewFontWhite15),
                    ),
                    ),
              ),
                
              ),
              Text("Tic-Tac-Toe",
              style: myNewFontWhite10),
              
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("© Created by Rezuwan",
                style: myNewFontWhite10),
              ),
              
    
    
            ],
          ),
        ) )
        
      ),
    );

  }

    void _clearBoard(){
      setState(() {
       for(int i =0;i <9;i++){
        displayxo[i] = '';
       } 
      });
      filledBoxes = 0;
      }


   void _showDrawDialog(){
      showDialog(
        barrierDismissible: false,
        context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Center(
            child: Text("DRAW", 
            style: myNewFont15),
          ),
        actions: <Widget>[
          FlatButton(onPressed: () {
          _clearBoard();
          Navigator.of(context).pop();
          },
          child: Text("Play another round",
          style: myNewFont10)),
        ]
        );
      }
      );
   }

  void _tapped(int index){
    
    setState(() {
      if(oTurn && displayxo[index] == ''){
      displayxo[index] = "O";
      filledBoxes += 1;
      }
      else if (!oTurn && displayxo[index] == ''){
      displayxo[index] = "X";
      filledBoxes += 1;
      }

      oTurn =! oTurn;
      _checkwinner();
    }
    );
  }

    void _checkwinner(){
      if((displayxo[0] == displayxo[1] ) && (displayxo[0] == displayxo[2]) && (displayxo[0] != '')){ //1st row
        _showWindial(displayxo[0]);
      }
      else if((displayxo[0] == displayxo[3] ) && (displayxo[0] == displayxo[6]) && (displayxo[0] != '')){ //1st column
        _showWindial(displayxo[0]);
      }
      else if((displayxo[3] == displayxo[4] ) && (displayxo[3] == displayxo[5]) && (displayxo[3] != '')){ //2nd row
        _showWindial(displayxo[3]);
      }
      else if((displayxo[1] == displayxo[4] ) && (displayxo[1] == displayxo[7]) && (displayxo[1] != '')){ //2nd column
        _showWindial(displayxo[1]);
      }
      else if((displayxo[6] == displayxo[7] ) && (displayxo[6] == displayxo[8]) && (displayxo[6] != '')){ //3rd row
        _showWindial(displayxo[6]);
      }
      else if((displayxo[2] == displayxo[5] ) && (displayxo[2] == displayxo[8]) && (displayxo[2] != '')){ //3rd column
        _showWindial(displayxo[2]);
      }
      else if((displayxo[0] == displayxo[4] ) && (displayxo[0] == displayxo[8]) && (displayxo[0] != '')){ //1st diagonal
        _showWindial(displayxo[0]);
      }
      else if((displayxo[2] == displayxo[4] ) && (displayxo[2] == displayxo[6]) && (displayxo[2] != '')){ //2nd diagonal
        _showWindial(displayxo[2]);
      }

      else if(filledBoxes == 9){
        _showDrawDialog();
      }
      

  }

    void _showWindial(String winner){
      showDialog(
        barrierDismissible: false,
        context: context, builder: (BuildContext context){
        return Card(
          elevation: 3,
          shadowColor: Colors.white,
          color: Color(0xff06070a),
          child: AlertDialog(
            title: Center(
              child: Text(winner == "O"? "Winner is Player 1!": "Winner is Player 2!", 
              style: myNewFont15),
            ),
          actions: <Widget>[
            FlatButton(onPressed: () {
            _clearBoard();
            Navigator.of(context).pop();
            },
            child: Text("Play another round",
            style: myNewFont10),)
          ]
          ),
        );
      }
      );


      if(winner == "O"){
        oScore +=1;
      }
      else if(winner == "X"){
        xScore +=1;
      }
      else{
        oScore += 0;
        xScore += 0;
      };





    }


  }

  



