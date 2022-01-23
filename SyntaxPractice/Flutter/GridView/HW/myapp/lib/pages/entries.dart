import 'package:flutter/material.dart';

class Entries extends StatelessWidget {
  const Entries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 28.0, 16.0, 16.0),

        child:  Card(
        child: Container(
          color: Color(0xffFFCDD2),
          width: double.infinity,
          height: 120.0,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xffFFCDD2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("#01",
                      style: TextStyle(
                        fontSize:20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),

                      Text("Bulbasaur",
                      style: TextStyle(
                        fontSize:10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[

                            Expanded(
                              flex: 2,
                              child: Card(
                                color: Colors.green,
                                child:Center(
                                  child: Text("Grass",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8.0
                              )),
                                ),
                              ),
                              ),

                              Expanded(
                              flex: 2,
                              child: Card(
                                color: Colors.purple,
                                child:Center(
                                  child: Text("Poison",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8.0
                              )),
                                ),
                              ),
                              ),

                          ],
                        ),
                      )
                    ],
                    
                  ),
                ),
                ),

              Expanded(
                flex: 3,
                child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("assets/images/bulbasaur.png"),
            )),
                )

            ],
          ),
        ),
      ),
        
        
        
        ),

 


      ],
    );
  }
}
