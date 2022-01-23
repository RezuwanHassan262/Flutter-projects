import "package:flutter/material.dart";

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[

            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Stack(
                    alignment:  AlignmentDirectional.topCenter,
                    children: [

                      
                      Image.asset(
                          "assets/images/i1.jpg",
                          fit: BoxFit.fitWidth,                      
                        ),
                      
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 285),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xff1ebeff),
                          ),
                          child: Column(
                            children: [
                              
                              Padding(
                                padding:
                                EdgeInsets.only(top: 76.0, bottom: 8.0),
                                child: Text(
                                  "Sarowar Hossain (Mishu)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding:
                                EdgeInsets.all(8.0),
                                child: Text(
                                  "UI/UX researcher | Product designer",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding:
                                EdgeInsets.all(8.0),
                                child: Text(
                                  "Dhaka, Bangladesh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text("100",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold, 
                                          fontSize: 18.0,
                                        ),
                                        ),
                                        Text("Photos"),
                                      ],
                                    ),                                  Column(
                                      children: [
                                        Text("10K",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),),
                                        Text("Followers"),
                                      ],
                                    ),                                  Column(
                                      children: [
                                        Text("13",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0
                                        ),),
                                        Text("Following"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Row(
                                children: [
                                  Expanded(
                                    flex:1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/p0.webp"
                                      ),
                                    ),
                                    ),

                                    Expanded(
                                    flex:1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/p1.webp"
                                      ),
                                    ),
                                    ),
                                ],
                              ),
                              
                              Row(
                                children: [
                                  Expanded(
                                    flex:1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/p2.webp"
                                      ),
                                    ),
                                  ),

                                    Expanded(
                                    flex:1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/p3.webp"
                                      ),
                                    ),
                                    ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.arrow_left,
                              size: 40.0,
                              color: Colors.black,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.more_horiz,
                              size: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                    Padding(
                      padding: const EdgeInsets.only(top:215.0),
                      child: CircleAvatar(
                        radius: 70.0,
                        child: ClipOval(
                            child: Image.asset(
                              "assets/images/mishu.jpg",
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                            )
                          ),
                        

                      ),
                    ),
                    ],
                  ),
                ],                


              ),

            ),

            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: const Color(0xff57e6ff),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.home),
                          Icon(Icons.search),
                          Icon(Icons.add),
                          Icon(Icons.save),
                          Icon(Icons.people),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

  ],
)
        
        )
    );
  }
}