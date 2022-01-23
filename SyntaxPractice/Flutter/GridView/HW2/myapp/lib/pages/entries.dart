import 'package:flutter/material.dart';

class entries extends StatelessWidget {
  final String Number;
  final String Name;
  final String Photo;
  final String Primary_type;
  final Color col1;
  final String Secondary_type;
  final Color col2;
  final String Abilities;
  final String Hidden_Ability;
  final String Height;
  final String Weight;

  const entries({
    Key? key,

    required this.Number,
    required this.Name,
    required this.Photo,
    required this.Primary_type,
    required this.col1,
    required this.Secondary_type,
    required this.col2,
    required this.Abilities,
    required this.Hidden_Ability,
    required this.Height,
    required this.Weight,

  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    
    return Stack(
              children: [
                
                Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 28.0, 16.0, 16.0),
        
                child:  Card(
                child: Container(
                  color: Color(0xffFFCDD2),
                  width: double.infinity,
                  height: 120.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Color(0xffFFCDD2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("$Number",
                              style: TextStyle(
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                        
                              Text("$Name",
                              style: TextStyle(
                                fontSize:10.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),),
                        
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                        
                                    Expanded(
                                      flex: 2,
                                      child: Card(
                                        color: col1,
                                        child:Center(
                                          child: Text("$Primary_type",
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.0
                                      )),
                                        ),
                                      ),
                                      ),
                        
                                      Expanded(
                                      flex: 2,
                                      child: Card(
                                        color: col2,
                                        child:Center(
                                          child: Text("$Secondary_type",
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.0
                                      )),
                                        ),
                                      ),
                                      ),
                        
                                  ],
                                ),
                              )
                            ],
                            
                          ),
                        ),
                        ),
                
                      Expanded(
                        flex: 3,
                        child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/$Photo"),
                    )),
                        )
                
                    ],
                  ),
                ),
                              ),
                
                
                
                ),
        
         
        
        
              ],
            );

  }
}