import 'User.dart';

class Customer extends User{
  
  Customer(String? name,String? pass,String? mail) : super(name, pass, mail);

  void buy(int pId){
    print("Buying product of $pId");
  }

  void sell(int pId){
    print("Selling product of $pId");
  }
}