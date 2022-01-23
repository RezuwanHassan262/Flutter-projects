import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main(){
  runApp(p1());
}
class p1 extends StatelessWidget {
  const p1({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFE300),
          title: Center(
            child: Text(
              "Soft kitty, Warm kitty",
            textAlign: TextAlign.justify, 
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff181D31)
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("Bed time clicked");
              },
              icon: const Icon(Icons.bedtime_rounded,
              color: Colors.black,
              size: 40.0),
              tooltip: "Bed Time"
            ),

            IconButton(
            onPressed: () {
                print("Settings clicked");
            },
            icon: const Icon(Icons.settings,
            color: Colors.grey,
            size: 40.0),
            tooltip: "Settings",
            ),

          ],
          ),
        
        body: Center(
          child: Column(
            children: [
            Expanded(
                flex:1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          child: ElevatedButton.icon(onPressed: (){print("Welcome to Youtube");}, 
                          icon: Icon(Icons.youtube_searched_for), 
                          label: Text("Youtube",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                            )
                            ),
                            style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            elevation: 20.0,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 1.0),
                            ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Facebook");}, 
                        icon: Icon(Icons.facebook_rounded), 
                        label: Text("Facebook",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xff3b5998),
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ElevatedButton.icon(onPressed: (){print("Welcome to Twitter");}, 
                          icon: Icon(Icons.transfer_within_a_station_rounded), 
                          label: Text("Twitter",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                            )
                            ),
                            style: ElevatedButton.styleFrom(
                            primary: Color(0xff00acee),
                            elevation: 20.0,
                            shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.black, width: 1.0),
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
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Browser");}, 
                        icon: Icon(Icons.surfing), 
                        label: Text("Web Browser",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xff53CDD8),
                          elevation: 20.0,
                          shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Whatsapp");}, 
                        icon: Icon(Icons.phone), 
                        label: Text("Whatsapp",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xff4FCE5D),
                          elevation: 20.0,
                          shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Dribbble");}, 
                        icon: Icon(Icons.sports_basketball_outlined), 
                        label: Text("Dribbble",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xffea4c89),
                          elevation: 20.0,
                          shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Notes");}, 
                        icon: Icon(Icons.note_rounded), 
                        label: Text("Notepad",
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xfffada5e),
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),

                    
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to LinkedIn");}, 
                        icon: Icon(Icons.contacts_rounded), 
                        label: Text("LinkedIn",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xff0072b1),
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),

                    
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Github");}, 
                        icon: Icon(Icons.code_rounded), 
                        label: Text("Github",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),


                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Musixmatch");}, 
                        icon: Icon(Icons.music_note_rounded),
                        label: Text("Musixmatch",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Maps");}, 
                        icon: Icon(Icons.pin_drop),
                        label: Text("Maps",
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Settings");}, 
                        icon: Icon(Icons.settings),
                        label: Text("Settings",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Camera");}, 
                        icon: Icon(Icons.camera),
                        label: Text("Camera",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Mail");}, 
                        icon: Icon(Icons.alternate_email_sharp),
                        label: Text("Mail",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.cyan,
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          ),
                          ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Downloads");}, 
                        icon: Icon(Icons.file_download_sharp),
                        label: Text("Downloads",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          elevation: 20.0,
                          shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
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
                        child: OutlinedButton.icon(onPressed: (){print("Welcome to Games");}, 
                        icon: Icon(Icons.casino),
                        label: Text("Games",
                        style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: OutlinedButton.styleFrom(
                           shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),


                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Upload files");}, 
                        icon: Icon(Icons.cloud_upload_rounded), 
                        label: Text("Upload files",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),

                    

                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Editor");}, 
                        icon: Icon(Icons.content_cut), 
                        label: Text("Editor",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),

                    

                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Uber");}, 
                        icon: Icon(Icons.delivery_dining_rounded), 
                        label: Text("Uber",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),



                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Compass");}, 
                        icon: Icon(Icons.explore), 
                        label: Text("Compass",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          elevation: 20.0,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
                          ),
                          ),
                      ),
                    ),



                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ElevatedButton.icon(onPressed: (){print("Welcome to Calculator");}, 
                        icon: Icon(Icons.exposure_outlined),
                        label: Text("Calculator",
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                          )
                          ),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          shape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          padding: EdgeInsets.all(50),
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
      ),
    );
  }
}

