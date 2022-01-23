import 'dart:io';

class User {
  String? name;
  String? email;
  String? password;

  User(String? name, String? pass, String? mail){
    this.name = name;
    this.password = pass;
    this.email = mail;
  }

  bool login() {
    print("Input email: ");
    String? inpEmail = stdin.readLineSync();
    print("Input password: ");
    String? inpPass = stdin.readLineSync();
    if (inpPass == password && inpEmail == email) {
      return true;
    }
    return false;
  }
}
