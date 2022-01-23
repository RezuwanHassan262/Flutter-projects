import 'User.dart';

class Admin extends User {
  String? adminType;

  Admin(name,mail,password) : super(name,mail,password);


  void deleteUser(int uid) {
    print("Deleting user of id $uid");
  }

  void addUser() {
    print("User created");
  }
}
