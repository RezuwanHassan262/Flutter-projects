import "dart:io";

class User{
  String? name;
  String? password;
  String? email;

  User(String? name, String? pass,String? mail,){
    this.name = name;
    this.password = pass;
    this.email = mail;
  }

  bool login(){
    print("Insert mail:");
    String? mail = stdin.readLineSync();
    print("Insert pass:");
    String? pass = stdin.readLineSync();

    if(mail == email && pass == password){
      return true;
    }
    else{
      return false;
    }

  }
  
}