import 'SubMenus.dart';

class Route{
  static void route(String choice){
    if(choice == "1")
  {
    SubMenus.send();
  }
  else if(choice == "2")
  {
    SubMenus.recharge();
  }
  else if(choice == "3")
  {
    SubMenus.payment();
  }
  else if(choice == "4")
  {
    SubMenus.cashout();
  }
  else{
    print("Choose any option between 1 to 4.");
  }
  }
}