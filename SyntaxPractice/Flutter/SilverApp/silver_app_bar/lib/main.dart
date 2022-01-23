import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: CustomScrollView(
            slivers: [

              SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context, int i) => SizedBox(
                  width:double.infinity,
                  height: 100.0,
                  child: Card(
                    child: Center(child: Text("Box number $i")),
                    color: Colors.red,),

                ),
                childCount: 10,
              ),
              ),

              SliverGrid(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int i)=> Card(
                  color: Colors.tealAccent,),
                  childCount: 20
              ),
              )
              



           ],
          ),
        ),
      ),
    );
  }
}