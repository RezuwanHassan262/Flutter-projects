import "package:flutter/material.dart";

class AllOkay extends StatelessWidget {
  final String mail;
  final String pass;

  const AllOkay({ Key? key,required this.mail,required this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xff5433FF),
            Color(0xff20BDFF),
            Color(0xff38a9f5),
            
          ],
          )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom:20.0),
              child: Text("Login successful",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),

              Padding(
                padding: const EdgeInsets.only(bottom:20.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage:AssetImage("images/rushdi.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),


              Text("Hello Rushdi, Welcome back",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              ),

              Text("Thank you for following the authentication procedure",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              ),

              Text("Hope you understand",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              ),


              Text("These are your mail id & password",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              ),

              Text("Mail: $mail",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              ),

              Text("Password: $pass",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Text("Go back",
              style: TextStyle(
                fontSize: 20.0, 
              ),
              ),
              ),
            ),
            
            ],
            ),
        ),
      ),
    );
  }
}