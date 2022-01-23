import 'package:flutter/material.dart';
import 'package:myapp/pixel.dart';
//import 'package:tetris/pixel.dart';

class MyGrid extends StatelessWidget {
  List<Color> pieceColors = [Colors.red,Colors.yellow,Colors.purple,Colors.green,Colors.blue,Colors.brown,Colors.pink];


  var newPiece; var newColor; var landedPieces; var numberOfSquares;
  MyGrid({ this.newPiece, this.landedPieces, this.newColor, this.numberOfSquares });

  int count = 0;
  
  void _countLanded(){
    count = landedPieces/4;
    print(count)
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: numberOfSquares, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10), itemBuilder: (BuildContext context, int index){
        for(int i = 0; i <pieceColors.length;i){if(landedPieces[i].contains(index)){ return MyPixel(color: pieceColors[i]);}}
        if (newPiece.contains(index)){ return MyPixel(color: newColors);}
        else{{return MyPixel(color: Colors.black);}}
      },
      
    );
  }
}


/////////////////////////////