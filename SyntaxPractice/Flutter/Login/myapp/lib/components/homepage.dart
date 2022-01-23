
import 'package:flutter/material.dart';
import 'package:myapp/components/details.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Homepage",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Details(data: "Example title 1"),),
                  );
                },

                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text("Contact picture",
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    title: Text("Contact name"),
                    subtitle: Text("Contact info"),
                  ),
                ),
              ),
            
                          InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Details(data: "Example title 2"),),
                  );
                },

                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text("Contact picture",
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    title: Text("Contact name"),
                    subtitle: Text("Contact info"),
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