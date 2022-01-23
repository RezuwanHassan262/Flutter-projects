import "package:flutter/material.dart";

class PassNotOkay extends StatelessWidget {
  final String mail;
  final String pass;

  const PassNotOkay({ Key? key,required this.mail,required this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xffFDFC47),
            Color(0xff24FE41),
          ],
          )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello Anonymous user",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage("images/ic.webp"),
                  backgroundColor: Colors.transparent,
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom:20.0),
              child: Text("Incorrect password",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),


              Text("These are the mail id & password you entered",
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


              Text("Sorry but the password you entered is incorrect, Please try again",
              style: TextStyle(
                fontSize: 15.0,
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