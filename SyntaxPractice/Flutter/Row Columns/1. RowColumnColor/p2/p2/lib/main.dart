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
          backgroundColor: Color(0xffFFFEA9),
          title: Text( "Blocks and all",
          style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.bedtime_rounded,
            color: Colors.black,
            size: 40.0),
            tooltip: 'Night time',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
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
                    child: Center(
                      child: Text( "Row 1 element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontStyle: FontStyle.italic,
                      ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xff71DFE7),
                    child: Center(
                     child: Text( "Row 1 element 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ), 
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Color(0xffC2FFF9),
                    child: Center(
                      child: Text( "Row 1 element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontStyle: FontStyle.italic,
                      ),
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
                    child: Center(
                      child: Text( "Row 2 element 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    )
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
                    child: Center(
                      child: Text( "Row 3 element 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
                    ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.grey,
                    child: Center(
                      child: Text( "Row 3 element 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontStyle: FontStyle.italic,
                    ),
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