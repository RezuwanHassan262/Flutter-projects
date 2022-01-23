import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/pages/suras.dart';
import "../config.dart";

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  
    Future<List> getSurahList() async{
    http.Response response =  await http.get(Uri.parse("${Config.urlRoot}${Config.endpoint_surahList}"));
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }
    else{
      throw Exception("Data loading error");
    }
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Suras of Alquran'),
        ),
        body:FutureBuilder(
          future: getSurahList(),
          builder: (BuildContext context, AsyncSnapshot<List?> sn){
            if(sn.hasData){
              return Center(child:ListView.builder(
                itemCount: sn.data!.length,
                itemBuilder: (context,index)=>
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ReadSurahPage(
                        id: sn.data?[index]["id"],
                        name: sn.data?[index]["name"],
                      ),)
                    );
                  },
                  child: Card(
                    color: Colors.purple,
                    child:ListTile(
                      leading: CircleAvatar(
                        child:Text("${index+1}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )),
                        backgroundColor: Colors.amberAccent,
                      ),
                    title: Text("${sn.data?[index]["name"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold)),
                    )
                    ),
                ), 
                  ),
                  );
            }

            if(sn.hasError){
              return Center(child: Text("Error 404: Error retreiving data"),);
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
          ),

      );
  }
}
