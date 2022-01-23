import "package:flutter/material.dart";

void main(){
  runApp(GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(      
          backgroundColor: Colors.lightBlue,
          elevation: 10.0,
          title: Center(
            child: Text("Alternate gym exercises at home",
            style: TextStyle(
              wordSpacing: 5.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
            ),
            ),
          actions: [
            IconButton(onPressed: () {print("This is your gym schedule");}, 
            icon: Icon(Icons.fitness_center_rounded),),
            IconButton(onPressed: () {print("Settings");}, 
            icon: Icon(Icons.settings_accessibility_rounded),)
          ],
        ),
        body: Container(
          width: double.infinity,
          color: Colors.blueAccent,
          child: ListView(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Biceps curl",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Saturday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/bicepsCurl.jpg"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),
                
                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Cable crossover exercise",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Sunday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/cablecrossover.png"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Butterfly chest workout",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Monday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/butterfly.png"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Cable seated exercise",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Tuesday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/cableseated.png"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Dips",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Wednesday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/dips.png"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Text("Pushups",
                                  style: TextStyle(
                                    fontSize:25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),

                                  Text("Thursday",
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color: Colors.black
                                  ),),

                                  Text("5 sets of 50",
                                  style: TextStyle(
                                    fontSize:15.0,
                                    color: Colors.black
                                  ),),

                                ],
                              ),
                            ),
                          ),
                          ),

                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.lightBlue[50],
                            child: Image.asset("assets/images/pushups.png"),
                          ),
                          )

                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    color: Colors.lightBlue[200],
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text("Rest",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:40.0,
                              color: Colors.black
                              ),
                              ),
                            ),
                          ),
                          )

                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}