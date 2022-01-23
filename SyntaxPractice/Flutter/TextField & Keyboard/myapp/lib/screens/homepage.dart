import 'package:flutter/material.dart';
import 'package:myapp/screens/allokay.dart';
import 'package:myapp/screens/passNotOkay.dart';
import 'package:myapp/screens/mailNotOkay.dart';
import 'package:myapp/screens/bothNotOkay.dart';

import 'allokayRezuwan.dart';

class Homepage extends StatelessWidget {
   TextEditingController mailTextController = TextEditingController();
   TextEditingController passTextController = TextEditingController();

    Homepage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: CircleAvatar(
                  radius: 5.0,
                  backgroundImage:AssetImage("images/chatLogo.png"),
                  backgroundColor: Colors.transparent,
                ),
        ),
        
        title: Center(
          child: Column(
            children: [
              Text("Chatsapp",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),

              Text("let's chat",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontStyle: FontStyle.italic)),

                ],
          ),
        ),


        backgroundColor: Color(0xff239bf7),
      ),

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
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CircleAvatar(
                radius: 100.0,
                backgroundImage:AssetImage("images/chatLogo.png"),
                backgroundColor: Colors.transparent,
              ),


            Text("ChatsApp",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),),

            Text("Chat with your hearts out",
            style: TextStyle(
              fontSize: 13.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),),

            Padding(
              padding: const EdgeInsets.only(top:30.0,bottom:20.0),
              child: Text("Please enter your mail id and password for authentication purpose",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold, 
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(top:5, bottom:5, left:200.0, right:200.0),
              child: TextField(
                controller: mailTextController,
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  helperText: "Example: hello@yahoo.com",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width:3.0),)
                ),
                cursorHeight: 30.0,
                cursorColor: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom:5.0, left:200.0, right:200.0),
              child: TextField(
                controller: passTextController,
                decoration: InputDecoration(
                  labelText: "Enter your password",
                  helperText: "Example: %hello&1234!",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width:3.0),)
                ),
                cursorHeight: 30.0,
                cursorColor: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: ElevatedButton(onPressed: () {

                if(mailTextController.text=='rushdimail@gmail.com' && passTextController.text=='123rushdi321' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AllOkay(mail:mailTextController.text, pass:passTextController.text)));
                }
                else if(mailTextController.text=='rushdimail@gmail.com' && passTextController.text!='123rushdi321' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PassNotOkay(mail:mailTextController.text, pass:passTextController.text)));
                }
                
                else if(mailTextController.text!='rushdimail@gmail.com' && passTextController.text=='123rushdi321' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MailNotOkay(mail:mailTextController.text, pass:passTextController.text)));
                }

                else if(mailTextController.text=='rezuwan@gmail.com' && passTextController.text=='123rezuwan' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AllOkayRezuwan(mail:mailTextController.text, pass:passTextController.text)));
                }

                else if(mailTextController.text!='rezuwan@gmail.com' && passTextController.text=='123rezuwan' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MailNotOkay(mail:mailTextController.text, pass:passTextController.text)));
                }

                else if(mailTextController.text=='rezuwan@gmail.com' && passTextController.text!='123rezuwan' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PassNotOkay(mail:mailTextController.text, pass:passTextController.text)));
                }

                else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BothNotOkay(mail:mailTextController.text, pass:passTextController.text)));
                }

              }, 
              child: Text("Send")
              ),
            )

          ],
        ),
      ),
    );
  }
}