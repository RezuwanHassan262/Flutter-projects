import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

void main(){
  runApp(p1());
}

class p1 extends StatelessWidget {
  const p1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text( "Blocks and all",
          style: TextStyle( 
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xff009DAE),
                    child: Text( "Row 1 element 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xff71DFE7),
                    child: Text( "Row 1 element 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xffC2FFF9),
                    child: Text( "Row 1 element 3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),  
              ],
            ),
          ),
          
          Expanded(
            flex:1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xffFFE652),
                    child: Text( "Row 2 element 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),
              ],),
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.purple,
                    child: Text( "Row 3 element 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.grey,
                    child: Text( "Row 3 element 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                  ),
                ),
              ],
              ),
          ),
          ],
      ),
        ),
      
    );
  }
}