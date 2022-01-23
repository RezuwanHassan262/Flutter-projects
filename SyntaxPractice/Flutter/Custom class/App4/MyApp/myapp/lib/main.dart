import "package:flutter/material.dart";
import "Components/MyCardTiles.dart";

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: CircleAvatar(
                maxRadius: 50.0,
                backgroundColor: Colors.white,
                child: Icon(Icons.checklist),
              ),
            ),
          ),
          
            flexibleSpace: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: [
              Color(0xffF21170),
              Color(0xff72147E),
              ],
            )
              ),
          ),
        

          title: Center(
            child: Text("Task Emphasizer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0)),
          ),

          elevation: 10.0,
        
        ),
        
        body:Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.cyan,
                Colors.deepPurple,
              ],
            )
          ),


          child: ListView(
            scrollDirection: Axis.vertical,

            children: [
              
              MyCardTiles(
                card_color: Color(0xff89fa78),
                myTitle: "Task completed",
                description: "Submission complete",
                mySubtitle: "Submitted within deadline",
                myIcon: Icons.check_sharp,
                myImage: "assets/images/coolEmoji.png"
              ),

               MyCardTiles(
                card_color: Color(0xffff9300),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching soon in 2 hours",
                myIcon: Icons.pending,
                myImage: "assets/images/panicEmoji.png"

              ),

               MyCardTiles(
                card_color: Color(0xffffaa36),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching in 2 days",
                myIcon: Icons.pending,
                myImage: "assets/images/panicEmoji.png"

              ),

               MyCardTiles(
                card_color: Colors.red,
                myTitle: "Task incomplete",
                description: "Submission failed",
                mySubtitle: "Surpassed deadline 3 days ago",
                myIcon: Icons.error,
                myImage: "assets/images/sadEmoji.png"

              ),

               MyCardTiles(
                card_color: Color(0xfffac175),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching next week",
                myIcon: Icons.pending,
                myImage: "assets/images/quoEmoji.png"

              ),

               MyCardTiles(
                card_color: Color(0xfff59f2a),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching soon in 3 days",
                myIcon: Icons.pending,
                myImage: "assets/images/panicEmoji.png"

              ),

               MyCardTiles(
                card_color: Color(0xfff5ae4e),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching soon in 4 days",
                myIcon: Icons.pending,
                myImage: "assets/images/panicEmoji.png"

              ),

              MyCardTiles(
                card_color: Color(0xff89fa78),
                myTitle: "Task completed",
                description: "Submission complete",
                mySubtitle: "Submitted within deadline",
                myIcon: Icons.check_sharp,
                myImage: "assets/images/coolEmoji.png"

              ),
              
               MyCardTiles(
                card_color: Color(0xffffaa36),
                myTitle: "Task pending",
                description: "Submission pending",
                mySubtitle: "Deadline approaching in 2 days",
                myIcon: Icons.pending,
                myImage: "assets/images/panicEmoji.png"

              ),

               MyCardTiles(
                card_color: Colors.red,
                myTitle: "Task incomplete",
                description: "Submission failed",
                mySubtitle: "Surpassed deadline 5 days ago",
                myIcon: Icons.error,
                myImage: "assets/images/sadEmoji.png"

              ),

              MyCardTiles(
                card_color: Color(0xff89fa78),
                myTitle: "Task completed",
                description: "Submission complete",
                mySubtitle: "Submitted within deadline",
                myIcon: Icons.check_sharp,
                myImage: "assets/images/coolEmoji.png"

              ),

              MyCardTiles(
                card_color: Color(0xff89fa78),
                myTitle: "Task completed",
                description: "Submission complete",
                mySubtitle: "Submitted within deadline",
                myIcon: Icons.check_sharp,
                myImage: "assets/images/coolEmoji.png"

              ),

            ],
          ),
        ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 5.0,
        child: Center(
          child: Icon(Icons.add),
        ),
        onPressed: () {print("Adding new task!");},
      ),
      
      bottomNavigationBar: BottomAppBar(      
  
        child: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
          Color(0xff72147E),
          Color(0xffF21170),],
          ),),

          height: 60.0,
          child: Center(
          child:Column(
            children: [

              Text("Task Emphasizer",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0
          ),),

          Text("Never miss a deadline again",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 10.0
          ),),


          CircleAvatar(
            maxRadius: 15.0,
            backgroundColor: Colors.white,
            child: Icon(Icons.checklist),
            ),


            ],) 
          ),
        ),
        ),
      
      drawer: Drawer(
        child: ListView(
          children: [
          Text("Hello"),

          ListTile(
            title: Text("Archieve",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),),
            leading: Icon(Icons.archive ),
          ),

          ListTile(
            title: Text("Trash",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),),
            leading: Icon(Icons.archive ),
          ),

        ],
        ),

        
        )




      ),
    );
  }
}
