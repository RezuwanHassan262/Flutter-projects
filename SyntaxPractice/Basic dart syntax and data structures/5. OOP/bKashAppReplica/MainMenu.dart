import 'dart:io';

class Mainmenu{
  static String? show()
  {
   print("1. Sent Money \n 2. Mobile Recharge\n 3. Payment\n 4. Cashout\n Enter your option");
   String? choice = stdin.readLineSync();
   return choice;


}
}