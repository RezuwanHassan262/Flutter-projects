import 'package:flutter/material.dart';

class MyCardTiles extends StatelessWidget {
  final Color? card_color;
  final String? myTitle;
  final String? description;
  final String? mySubtitle;
  final IconData? myIcon;
  final String myImage;

  const MyCardTiles({
    Key? key,
    required this.card_color,
    required this.myTitle,
    required this.description,
    required this.mySubtitle,
    required this.myIcon,
    required this.myImage,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0),
    child: Container(
      color: card_color,

      child:ListTile(
                  
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      myImage,
                    ),
                  ),
                  title: Center(
                    child: Text(myTitle!,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),),),
                  
                  subtitle: Column(
                    children: [
                      
                      Center(
                        child: Text(mySubtitle!,
                        style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                    ),),),

                      Center(
                        child: Text(description!,
                        style: TextStyle(
                        fontSize: 12.0,
                        fontStyle: FontStyle.italic,
                    ),),),

                    ],),

                    
                  trailing: Icon(myIcon),
                ),
                )
    );
  }
}