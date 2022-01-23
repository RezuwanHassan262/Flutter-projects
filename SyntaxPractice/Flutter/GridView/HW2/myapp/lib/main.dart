//12.00/63.03

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/entries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final pokemonData = [
    
    {
      "Number" : "#01",
      "Name":"Bulbasaur",
      "Photo":"bulbasaur.png",
      "Primary type":"Grass",
      "Color1": Colors.green,
      "Secondary type":"Poison",
      "Color2": Colors.purple,
      "Abilities":"Overgrow",
      "Hidden ability":"Chlorophyll",
      "Height":'''2'04"	0.7m''',
      "Weight":"15.2 lbs. 6.9 kg"
    },

    {
      "Number" : "#02",
      "Name":"Ivysaur",
      "Photo":"ivysaur.png",
      "Primary type":"Grass",
      "Color1": Colors.green,
      "Secondary type":"Poison",
      "Color2": Colors.purple,
      "Abilities":"Overgrow",
      "Hidden ability":"Chlorophyll",
      "Height":'''3'03"	1.0m''',
      "Weight":"28.7lbs. 13.0 kg"
    },

    {
      "Number" : "#03",
      "Name":"Venusaur",
      "Photo":"venusaur.png",
      "Primary type":"Grass",
      "Color1": Colors.green,
      "Secondary type":"Poison",
      "Color2": Colors.purple,
      "Abilities":"Overgrow",
      "Hidden ability":"Chlorophyll",
      "Height":'''6'07" 	2.0 m''',
      "Weight":"220.5 lbs. 	100.0 kg"
    },

    {
      "Number" : "#04",
      "Name":"Charmander",
      "Photo":"charmander.png",
      "Primary type":"Fire",
      "Color1": Colors.orange,
      "Secondary type":"None",
      "Color2": Colors.transparent,
      "Abilities":"Blaze",
      "Hidden ability":"Solar Power",
      "Height":'''2'00" 	0.6 m''',
      "Weight":"18.7 lbs. 	8.5 kg"
    },

    {
      "Number" : "#05",
      "Name":"Charmeleon",
      "Photo":"charmeleon.png",
      "Primary type":"Fire",
      "Color1": Colors.orange,
      "Secondary type":"None",
      "Color2": Colors.transparent,
      "Abilities":"Blaze",
      "Hidden ability":"Solar Power",
      "Height":'''3'07" 	1.1 m''',
      "Weight":"41.9 lbs. 	19.0 kg"
    },

    {
      "Number" : "#06",
      "Name":"Charizard",
      "Photo":"charizard.png",
      "Primary type":"Fire",
      "Color1": Colors.orange,
      "Secondary type":"Flying",
      "Color2": Color(0xfffffce6),
      "Abilities":"Blaze",
      "Hidden ability":"Solar Power",
      "Height":'''5'07" 	1.7 m''',
      "Weight":"15.2 lbs.| 6.9 kg"
    },

    {
      "Number" : "#07",
      "Name":"Squirtle",
      "Photo":"squirtle.png",
      "Primary type":"Water",
      "Color1": Color(0xff9dc9fc),
      "Secondary type":"None",
      "Color2": Colors.transparent,
      "Abilities":"Torrent",
      "Hidden ability":"Rain dish",
      "Height":'''1'08" 	0.5 m ''',
      "Weight":"19.8 lbs. 	9.0 kg"
    },
    
    {
      "Number": "#08",
      "Name":"Wartortle",
      "Photo":"wartortle.png",
      "Primary_type":"Water",
      "col1": Color(0xff9dc9fc),
      "Secondary_type":"None",
      "col2": Colors.transparent,
      "Abilities":"Torrent",
      "Hidden_Ability":"Rain dish",
      "Height":'''3'03" 	1.0 m''',
      "Weight":"49.6 lbs. 	22.5 kg"
  }
   
      {
      "Number": "#09",
      "Name":"Blastoise",
      "Photo":"blastoise.png",
      "Primary_type":"Water",
      "col1": Color(0xff9dc9fc),
      "Secondary_type":"None",
      "col2": Colors.transparent,
      "Abilities":"Torrent",
      "Hidden_Ability":"Rain dish",
      "Height":'''5'03" 	1.6 m''',
      "Weight":"188.5 lbs. 	85.5 kg"
     }


  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Image.asset("assets/images/pokeball.png"),
            ),
          
          title: Center(
            child: Text("Pokedex",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ))),
        ),
        
        
        body: Container(

          color: Color(0xffFFEBEE),
          height: double.infinity,
          width: double.infinity,
          
          child: GridView.builder(
            gridDelegate : SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 1,


            ),
            itemCount: pokemonData.length,
            itemBuilder: (BuildContext context, int i)=> pokemonData(Photo: pokemonData[i]["Photo"],),

            crossAxisCount: 3,
            children: [
              entries(
      Number: "#01",
      Name:"BulBasaur",
      Photo:"bulbasaur.png",
      Primary_type:"Grass",
      col1: Colors.green,
      Secondary_type:"Poison",
      col2: Colors.purple,
      Abilities:"Overgrow",
      Hidden_Ability:"Chlorophyll",
      Height:'''2'04"	0.7m''',
      Weight:"15.2 lbs. 6.9 kg"
     
              ),

              entries(
      Number: "#02",
      Name:"Ivysaur",
      Photo:"ivysaur.webp",
      Primary_type:"Grass",
      col1: Colors.green,
      Secondary_type:"Poison",
      col2: Colors.purple,
      Abilities:"Overgrow",
      Hidden_Ability:"Chlorophyll",
      Height:'''3'03"	1.0m''',
      Weight:"28.7lbs. 13.0 kg"
     
              ),

              entries(
      Number: "#03",
      Name:"Venusaur",
      Photo:"venusaur.webp",
      Primary_type:"Grass",
      col1: Colors.green,
      Secondary_type:"Poison",
      col2: Colors.purple,
      Abilities:"Overgrow",
      Hidden_Ability:"Chlorophyll",
      Height:'''6'07" 	2.0 m''',
      Weight:"220.5 lbs. 	100.0 kg"
     
              ),

              entries(
      Number: "#04",
      Name:"Charmander",
      Photo:"charmander.png",
      Primary_type:"Fire",
      col1: Colors.orange,
      Secondary_type:"None",
      col2: Colors.transparent,
      Abilities:"Blaze",
      Hidden_Ability:"Solar Power",
      Height:'''2'00" 	0.6 m''',
      Weight:"18.7 lbs. 	8.5 kg"
     
              ),

      entries(
      Number: "#05",
      Name:"Charmeleon",
      Photo:"charmeleon.png",
      Primary_type:"Fire",
      col1: Colors.orange,
      Secondary_type:"None",
      col2: Colors.transparent,
      Abilities:"Blaze",
      Hidden_Ability:"Solar Power",
      Height:'''3'07" 	1.1 m''',
      Weight:"41.9 lbs. 	19.0 kg"
     
              ),

      entries(
      Number: "#06",
      Name:"Charizard",
      Photo:"charizard.png",
      Primary_type:"Fire",
      col1: Colors.orange,
      Secondary_type:"Flying",
      col2: Color(0xfffffce6),
      Abilities:"Blaze",
      Hidden_Ability:"Solar Power",
      Height:'''5'07" 	1.7 m''',
      Weight:"199.5 lbs. 	90.5 kg"
     
              ),

              entries(
      Number: "#07",
      Name:"Squirtle",
      Photo:"squirtle.png",
      Primary_type:"Water",
      col1: Color(0xff9dc9fc),
      Secondary_type:"None",
      col2: Colors.transparent,
      Abilities:"Torrent",
      Hidden_Ability:"Rain dish",
      Height:'''1'08" 	0.5 m ''',
      Weight:"19.8 lbs. 	9.0 kg"
     
              ),

              entries(
      Number: "#08",
      Name:"Wartortle",
      Photo:"wartortle.png",
      Primary_type:"Water",
      col1: Color(0xff9dc9fc),
      Secondary_type:"None",
      col2: Colors.transparent,
      Abilities:"Torrent",
      Hidden_Ability:"Rain dish",
      Height:'''3'03" 	1.0 m''',
      Weight:"49.6 lbs. 	22.5 kg"
     
              ),

      entries(
      Number: "#09",
      Name:"Blastoise",
      Photo:"blastoise.png",
      Primary_type:"Water",
      col1: Color(0xff9dc9fc),
      Secondary_type:"None",
      col2: Colors.transparent,
      Abilities:"Torrent",
      Hidden_Ability:"Rain dish",
      Height:'''5'03" 	1.6 m''',
      Weight:"188.5 lbs. 	85.5 kg"
     
              ),



            ],
          ),
        ),
      ),
    );
  }

}
