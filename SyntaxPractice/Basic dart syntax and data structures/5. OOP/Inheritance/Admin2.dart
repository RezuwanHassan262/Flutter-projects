import 'User2.dart';

class Admin extends User{

  Admin(name,mail,pass) :super(name,mail,pass);

  void deleteUser(int uId){
    print("Deleting user of id $uId");
  }
  
  void addUser(){
    print("User created");
  }
  
}