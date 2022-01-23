import "package:flutter/material.dart";

void main(){
  runApp(ai1());
}

class ai1 extends StatelessWidget {
  const ai1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 10.0,
          title: Center(
            child: Text("Strawhats pirates",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40.0
            ),
            ),
          ),

          actions: [
            IconButton(onPressed: () {print("Bedtime Button pressed");}, 
            icon: Icon(Icons.bedtime_rounded,
              color: Colors.black,
              size: 40.0),
              tooltip: "Bed Time",
              ),

            
            IconButton(onPressed: () {print("Setting Button pressed");}, 
            icon: Icon(Icons.settings,
              color: Colors.grey,
              size: 40.0),
              tooltip: "Settings",
              ),
          ],
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [

            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Roronoa_Zoro.jpg/220px-Roronoa_Zoro.jpg"),
                  ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.network("https://static.wikia.nocookie.net/onepiece/images/6/68/Nami_Anime_Post_Timeskip_Infobox.png"),
                  ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.network("https://static.wikia.nocookie.net/onepiece/images/3/35/Usopp_Anime_Post_Timeskip_Infobox.png"),
                  ),
                  ),    
                ],
                ),
              ),


            Expanded(
              flex: 1,
              child: Row(
                children: [


                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.network("https://data.whicdn.com/images/227688820/original.jpg"),
                  ),
                  ),
      
                ],
                ),
              ),


            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.asset("assets/images/p1.png") ,
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