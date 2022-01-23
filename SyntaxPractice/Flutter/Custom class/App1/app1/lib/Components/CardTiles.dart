import 'package:flutter/material.dart';

class CardTiles extends StatelessWidget {
  const CardTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0),
    child: Container(
      color: Colors.red,
      width: double.infinity,
      height: 120.0,
    ),
    );
  }
}